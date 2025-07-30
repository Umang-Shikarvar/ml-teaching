#!/bin/bash
# rebuild_all.sh - Script to rebuild all PDFs and report failures

echo "=== ML Teaching Repository - Rebuild All Slides ==="
echo "Starting full rebuild at $(date)"
echo ""

# Clean everything first
echo "🧹 Cleaning all build artifacts..."
make clean

# Count total topics and tex files for progress tracking
TOPICS=(basics maths supervised unsupervised neural-networks advanced optimization)
TOTAL_TOPICS=${#TOPICS[@]}
echo "📊 Building ${TOTAL_TOPICS} topics..."
echo ""

# Build all with progress reporting
echo "🔨 Building all slides with progress..."
BUILD_SUCCESS=true
CURRENT_TOPIC=0

for topic in "${TOPICS[@]}"; do
    CURRENT_TOPIC=$((CURRENT_TOPIC + 1))
    PROGRESS=$(( (CURRENT_TOPIC * 100) / TOTAL_TOPICS ))
    
    echo "[${CURRENT_TOPIC}/${TOTAL_TOPICS}] (${PROGRESS}%) Building ${topic}..."
    
    if make -C "$topic" all >> build_results.log 2>&1; then
        echo "  ✅ ${topic} completed successfully"
    else
        echo "  ❌ ${topic} failed to build"
        BUILD_SUCCESS=false
    fi
    echo ""
done

if [ "$BUILD_SUCCESS" = true ]; then
    echo "🎉 All slides built successfully!"
else
    echo "❌ Some slides failed to build"
fi

# Analyze results
echo ""
echo "=== BUILD SUMMARY ==="
echo "Completed at $(date)"
echo ""

# Count successes
SUCCESS_COUNT=$(find . -name "*.pdf" -path "*/slides/*" | wc -l)
echo "📊 Generated PDFs: $SUCCESS_COUNT"

# List successful builds
echo ""
echo "✅ SUCCESSFUL BUILDS:"
find . -name "*.pdf" -path "*/slides/*" | sort | while read pdf; do
    echo "  ✓ $pdf"
done

# Find failures by looking for error messages in the log
echo ""
echo "❌ FAILED BUILDS:"
if grep -q "make.*Error" build_results.log; then
    grep "make.*Error" build_results.log | while read error; do
        echo "  ✗ $error"
    done
else
    echo "  (None - all builds succeeded!)"
fi

# Show last part of log if there were failures
if [ "$BUILD_SUCCESS" = false ]; then
    echo ""
    echo "🔍 LAST 20 LINES OF BUILD LOG:"
    echo "----------------------------------------"
    tail -20 build_results.log
    echo "----------------------------------------"
    echo ""
    echo "💡 Full build log saved in: build_results.log"
fi

echo ""
echo "=== REBUILD COMPLETE ==="
echo "Finished at $(date)"

# Exit with same code as make
if [ "$BUILD_SUCCESS" = true ]; then
    exit 0
else
    exit 1
fi