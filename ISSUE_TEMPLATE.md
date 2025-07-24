# Issue Template - ML Course Materials Feedback

## Overview
This document provides a framework for reporting issues, bugs, and suggestions for improving the ML course materials. Whether you're a student, instructor, or contributor, your feedback helps improve the quality and consistency of these educational resources.

## 🎯 What We're Looking For

### 📊 **SLIDES** (`.tex` files in `slides/` directories)

#### 1. **Convention Issues** ⚠️
- [ ] **Mathematical Notation**: Check if using proper conventions from `conventions.sty`
  - Should use `\vtheta` instead of `\theta` for parameter vectors
  - Should use `\mX` instead of `X` for matrices  
  - Should use `\vy` instead of `Y` for output vectors
  - Should use `\tp` instead of `^T` for transpose
- [ ] **Typography**: 
  - Use `\ldots` instead of `...` in mathematical expressions
  - Proper spacing around equations (display math vs inline)
- [ ] **Citation Format**: Consistent reference styling
- [ ] **Code Formatting**: Consistent highlighting and fonts

#### 2. **Look and Feel Issues** 🎨
- [ ] **Layout Problems**:
  - Text/equations overflowing slide boundaries
  - Poor alignment of bullet points or equations
  - Inconsistent spacing between elements
- [ ] **Font Issues**:
  - Font size too small/large for readability
  - Inconsistent font usage across slides
- [ ] **Color Scheme**:
  - Poor contrast making text hard to read
  - Inconsistent color usage
- [ ] **Slide Transitions**: Awkward `\pause` or animation timing

#### 3. **Conceptual Errors** 🧠
- [ ] **Mathematical Mistakes**:
  - Wrong formulas or derivations
  - Incorrect variable definitions
  - Sign errors or missing terms
- [ ] **Logical Flow**:
  - Topics introduced without proper foundation
  - Contradictory statements
  - Missing key concepts or oversimplifications
- [ ] **Algorithm Explanations**:
  - Steps out of order
  - Missing crucial implementation details

#### 4. **Missing Examples** 💡
- [ ] **Real-world Applications**: Suggest concrete use cases
- [ ] **Step-by-step Calculations**: Manual worked examples
- [ ] **Code Examples**: Python implementations or pseudocode
- [ ] **Visual Examples**: Suggest where diagrams would help

#### 5. **Missing Quiz Questions** ❓
- [ ] **Conceptual Understanding**: Multiple choice questions
- [ ] **Mathematical Computation**: Calculation problems
- [ ] **Application Scenarios**: When to use which method
- [ ] **Debugging Scenarios**: Common pitfalls and solutions

#### 6. **Topic Suggestions** 📚
- [ ] **Missing Subtopics**: Important concepts not covered
- [ ] **Advanced Topics**: Extensions or modern variants
- [ ] **Practical Considerations**: Implementation tips, computational complexity
- [ ] **Recent Developments**: Current research directions

#### 7. **Missing Figures** 📈
- [ ] **Visualizations**: Suggest plots, diagrams, or illustrations
- [ ] **Algorithm Flowcharts**: Step-by-step visual representations
- [ ] **Geometric Intuitions**: 2D/3D visualizations of concepts
- [ ] **Comparison Charts**: Side-by-side method comparisons

#### 8. **Content Issues** ✂️
- [ ] **Content Getting Cut**: Text/equations running off slides
- [ ] **Overlapping Elements**: Text or figures overlapping
- [ ] **Missing Content**: Slides that reference non-existent content
- [ ] **Outdated Information**: Links or references that need updating

---

### 📓 **NOTEBOOKS** (`.ipynb` files in various directories)

#### 1. **Metadata Issues** 📋
- [ ] **Missing First Cell**: Should contain title, description, and course info
- [ ] **Author Information**: Missing or incorrect attribution
- [ ] **Learning Objectives**: Clear goals not stated
- [ ] **Prerequisites**: Required background not mentioned

#### 2. **Colab Integration** 🔗
- [ ] **Missing Colab Button**: No "Open in Colab" badge at top
- [ ] **Broken Colab Links**: Links don't work or point to wrong notebook
- [ ] **Colab-specific Issues**: Code that works locally but fails in Colab

#### 3. **Execution Issues** ⚡
- [ ] **Notebook Doesn't Run**: 
  - Cells fail to execute
  - Missing dependencies
  - Version compatibility issues
- [ ] **Runtime Errors**:
  - ImportError for packages
  - FileNotFoundError for datasets
  - Memory or timeout issues
- [ ] **Output Issues**:
  - Missing or corrupted outputs
  - Plots not displaying correctly

#### 4. **Path and File Issues** 📁
- [ ] **Incorrect Figure Paths**: 
  - Broken image references
  - Wrong relative paths
  - Missing image files
- [ ] **Dataset Paths**:
  - Hardcoded local paths instead of relative
  - Missing data files
  - Download links broken
- [ ] **Import Paths**: Incorrect module imports

#### 5. **Code Quality** 💻
- [ ] **Code Style**: 
  - Inconsistent formatting
  - Missing comments or docstrings
  - Unclear variable names
- [ ] **Reproducibility**:
  - Missing random seeds
  - Non-deterministic behavior
  - Environment dependencies unclear

#### 6. **Educational Quality** 🎓
- [ ] **Explanation Gaps**: Code without sufficient explanation
- [ ] **Exercise Difficulty**: Too easy/hard problems
- [ ] **Missing Exercises**: Opportunities for hands-on practice
- [ ] **Solution Quality**: Incomplete or incorrect solutions

---

### 📖 **TUTORIALS** (`.tex` files in `tutorials/` directories)

#### 1. **Format and Style** 📝
- [ ] **Mathematical Notation**: Same convention issues as slides
- [ ] **Typography**: Proper LaTeX formatting
- [ ] **Section Structure**: Logical organization and flow
- [ ] **Problem Numbering**: Consistent and clear

#### 2. **Content Quality** 📚
- [ ] **Conceptual Clarity**: Clear explanations and definitions
- [ ] **Problem Difficulty**: Appropriate progression from easy to hard
- [ ] **Solution Completeness**: Step-by-step worked solutions
- [ ] **Real-world Relevance**: Practical applications and examples

#### 3. **Technical Issues** 🔧
- [ ] **Compilation Errors**: LaTeX syntax issues
- [ ] **Missing References**: Broken citations or figure references
- [ ] **Table/Figure Layout**: Formatting and positioning issues

---

## 📝 How to Report Issues

### 🎫 **Issue Template**

```markdown
## Bug Report: [MATERIAL TYPE] - [TOPIC]

**File**: `path/to/file.ext`
**Category**: [Convention/Look&Feel/Conceptual/Example/Quiz/Topic/Figure/Content]
**Severity**: [High/Medium/Low]

### Description
[Clear description of the issue]

### Current Behavior
[What currently happens]

### Expected Behavior  
[What should happen instead]

### Suggested Fix
[Your recommendation for fixing this]

### Additional Context
- Line number (if applicable): 
- Screenshot (if visual issue):
- Related files:
```

### 🏷️ **Severity Levels**

- **High**: Breaks compilation, major conceptual errors, completely broken functionality
- **Medium**: Minor errors, poor formatting, missing important content
- **Low**: Cosmetic issues, suggestions for improvement

### 📂 **Where to Submit**

1. **GitHub Issues**: Create individual issues for each bug found
2. **Shared Document**: Use provided Google Sheet/Doc for quick logging
3. **Email**: For urgent issues or clarifications

---

## 🎯 **Priority Areas**

### **High Priority** 🔴
1. Mathematical notation consistency
2. Compilation/execution errors
3. Major conceptual mistakes
4. Broken links or missing files

### **Medium Priority** 🟡
1. Layout and formatting issues
2. Missing examples or exercises
3. Unclear explanations
4. Outdated content

### **Low Priority** 🟢
1. Minor styling improvements
2. Additional topic suggestions
3. Enhanced visualizations
4. Bonus content ideas

---

## 💡 **Tips for Effective Review**

1. **Test Everything**: Actually run notebooks, compile LaTeX files
2. **Think Like a Student**: Is content clear for someone learning this for the first time?
3. **Check Cross-references**: Do figures, equations, and sections reference correctly?
4. **Verify Examples**: Do mathematical examples actually work out correctly?
5. **Consider Accessibility**: Is content readable for diverse learners?

---

## 📊 **Review Progress Tracking**

- [ ] **Linear Regression** (slides + notebooks + tutorials)
- [ ] **Logistic Regression** (slides + notebooks + tutorials)  
- [ ] **Decision Trees** (slides + notebooks + tutorials)
- [ ] **Ensemble Methods** (slides + notebooks + tutorials)
- [ ] **SVM** (slides + notebooks + tutorials)
- [ ] **Naive Bayes** (slides + notebooks + tutorials)
- [ ] **K-NN** (slides + notebooks + tutorials)
- [ ] **Cross-validation** (slides + notebooks + tutorials)
- [ ] **Bias-Variance** (slides + notebooks + tutorials)
- [ ] **Feature Selection** (slides + notebooks + tutorials)

---

## 🙋‍♀️ **Questions or Clarifications?**

For any questions about this review process:
- **Contact**: [Your contact information]
- **Office Hours**: [Your availability]
- **Response Time**: Expect response within 24 hours

---

*Thank you for helping improve our ML course materials! Your careful review will directly benefit student learning outcomes.* 🎓✨