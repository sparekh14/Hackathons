# 🧮 Multidimensional Calculator

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Math](https://img.shields.io/badge/Math_Library-FFA500?style=for-the-badge)
![Console](https://img.shields.io/badge/Console_App-000000?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Complete-brightgreen?style=for-the-badge)

**🏆 Titan Hacks • April 11-12, 2020 • San Marino Hack Club**

A comprehensive mathematical calculator that transcends the limitations of traditional calculators. Built during a 48-hour hackathon, this Python-powered tool provides advanced geometric calculations, formula solving, and conversion utilities that make complex mathematics accessible to everyone.

## 🎯 Project Vision

Most calculators only offer basic arithmetic functions. Our **Multidimensional Calculator** was designed to bridge the gap between simple calculators and professional mathematical software, providing students, engineers, and professionals with a powerful yet accessible computational tool.

## ✨ Core Features

### 🔢 Calculator Modules

| Module | Purpose | Capabilities |
|--------|---------|--------------|
| **Simple Calculator** | Basic Operations | Arithmetic, Exponents, Roots |
| **Formula Calculator** | Advanced Geometry | Area, Perimeter, Volume, Surface Area |
| **Converter** | Unit Conversions | Temperature scales and more |

### 📐 Geometric Calculations

#### **2D Shapes Supported (10+)**
- **Square** - Side-based calculations
- **Rectangle** - Length × Width operations
- **Circle** - Radius/diameter-based formulas
- **Triangle** - Various triangle calculations
- **Trapezoid** - Parallel sides geometry
- **Parallelogram** - Base × Height computations
- **Regular Polygons**: Pentagon, Hexagon, Heptagon, Octagon

#### **3D Objects Supported (6+)**
- **Cube** - Volume and surface area
- **Rectangular Prism** - 3D rectangular calculations
- **Cylinder** - Circular base volume
- **Sphere** - Spherical geometry
- **Cone** - Circular cone calculations
- **Pyramid** - Square/rectangular base pyramids

### 🧪 Advanced Mathematical Functions

#### **Formula Calculations**
- **Perimeter/Circumference** - All supported 2D shapes
- **Area Calculations** - Advanced geometric formulas
- **Volume Computations** - 3D object volume
- **Surface Area** - Complete 3D surface calculations
- **Quadratic Formula** - Polynomial equation solving
- **Pythagorean Theorem** - Right triangle calculations

#### **Specialized Operations**
- **Root Calculations** - nth root of any number
- **Exponent Operations** - Power calculations with custom syntax
- **Temperature Conversion** - Multiple scale conversions
- **Complex Expressions** - Evaluation using Python's eval()

## 🚀 Quick Start

### Prerequisites

```bash
# Python 3.6+ required
python --version

# No external dependencies required - uses built-in libraries
```

### Installation & Usage

1. **Download the calculator**
   ```bash
   git clone https://github.com/yourusername/multidimensional-calculator.git
   cd multidimensional-calculator
   ```

2. **Run the application**
   ```bash
   python MultidimensionalCalculator.py
   ```

3. **Follow the interactive prompts**
   ```
   1. Simple Calculator
   2. Formula Calculator
   3. Converter
   Enter the number of the calculator you want to open: 
   ```

## 📋 Detailed Usage Guide

### 🔢 Simple Calculator

#### **Basic Operations**
```python
# Example expressions
2 + 3 * 4        # Result: 14
(10 - 2) / 4     # Result: 2.0
2**3             # Exponent: 8
```

#### **Root Calculations**
```
Enter the number you want under the root symbol: 27
Enter the value of the root: 3
# Result: 3.0 (cube root of 27)
```

### 📐 Formula Calculator

#### **Perimeter Examples**

**Square Perimeter**
```
Enter the shape: square
Enter the length: 5
Result: The perimeter is 20.000000
```

**Circle Circumference**
```
Enter the shape: circle
Enter the diameter: 10
Result: The circumference is 31.415927
```

#### **Area Calculations**

**Triangle Area**
```
Enter the shape: triangle
Enter the base: 10
Enter the height: 8
Result: The area is 40.000000
```

**Hexagon Area**
```
Enter the shape: hexagon
Enter the side length: 6
Result: The area is 93.530744
```

#### **Volume Calculations**

**Sphere Volume**
```
Enter the shape: sphere
Enter the radius: 5
Result: The volume of the sphere is 523.598776
```

**Rectangular Prism**
```
Enter the shape: rectangular prism
Enter the length: 4
Enter the width: 3
Enter the height: 2
Result: The volume of the rectangular prism is 24.000000
```

## 🏗️ Technical Architecture

### **Core Mathematics Implementation**

```python
# Key mathematical formulas implemented:

# Circle Area: π × r²
area = math.pi * (radius**2)

# Sphere Volume: (4/3) × π × r³
volume = (4/3) * math.pi * radius**3

# Hexagon Area: 3 × (√3/2) × s²
area = 3 * (math.sqrt(3)/2) * (side**2)

# Heptagon Area: (7/4) × (s²/tan(π/7))
area = (7/4) * ((side**2)/(math.tan(math.pi/7)))
```

### **Error Handling & Validation**

- **Input Validation** - Ensures numeric inputs
- **Shape Recognition** - Validates supported shapes
- **Mathematical Bounds** - Prevents invalid operations
- **User-Friendly Messages** - Clear error communication

## 🎮 Interactive Features

### **Shape Selection System**
```python
shapes1 = ["square", "rectangle", "circle", "triangle", 
           "trapezoid", "parallelogram", "pentagon", 
           "hexagon", "heptagon", "octagon"]

shapes2 = ["cube", "cylinder", "rectangular prism", 
           "sphere", "cone", "pyramid"]
```

### **Dynamic Formula Application**
- Context-aware input prompts
- Automatic formula selection
- Real-time calculation display
- Formatted output with precision

## 📊 Supported Calculations

### **2D Geometry**

| Shape | Perimeter Formula | Area Formula |
|-------|-------------------|--------------|
| Square | 4 × side | side² |
| Rectangle | 2(l + w) | l × w |
| Circle | π × diameter | π × r² |
| Triangle | a + b + c | ½ × base × height |
| Pentagon | 5 × side | ½ × perimeter × apothem |
| Hexagon | 6 × side | 3√3/2 × s² |

### **3D Geometry**

| Object | Volume Formula | Surface Area |
|--------|----------------|--------------|
| Cube | side³ | 6 × side² |
| Sphere | 4/3 × π × r³ | 4 × π × r² |
| Cylinder | π × r² × h | 2πr(r + h) |
| Cone | 1/3 × π × r² × h | πr(r + √(r² + h²)) |

## 🚧 Future Development

### **Planned Enhancements**
- [ ] **GUI Interface** - Modern graphical user interface
- [ ] **3D Visualization** - Shape rendering and visualization
- [ ] **Unit System** - Comprehensive unit conversions
- [ ] **Scientific Functions** - Trigonometry, logarithms
- [ ] **Equation Solver** - System of equations
- [ ] **Graphing Capabilities** - Function plotting
- [ ] **Export Features** - Save calculations to file
- [ ] **History System** - Previous calculation recall

### **Code Improvements**
- [ ] **Object-Oriented Refactor** - Class-based architecture
- [ ] **Input Validation** - Enhanced error handling
- [ ] **Configuration System** - Customizable settings
- [ ] **Plugin Architecture** - Extensible calculator modules

## 👥 Development Team

**Created by:**
- **Samarth Parekh** - Lead Developer & Project Architect
- **Arjun Ramprasad** - Mathematical Implementation & Testing

## 🏆 Hackathon Achievement

This project was successfully completed during the **Titan Hacks 2020** hackathon, demonstrating:

- ⚡ **Rapid Development** - Full implementation in 48 hours
- 🧠 **Mathematical Expertise** - Complex formula implementation
- 🎯 **Problem Solving** - Addressing real-world calculator limitations
- 🤝 **Team Collaboration** - Effective pair programming

## 🔬 Educational Value

### **Learning Outcomes**
- **Mathematical Programming** - Implementing geometric formulas
- **User Interface Design** - Console-based interaction patterns
- **Software Architecture** - Modular design principles
- **Error Handling** - Robust input validation

### **Applicable Fields**
- **Engineering** - Geometric calculations for design
- **Education** - Teaching aid for mathematics
- **Architecture** - Area and volume computations
- **Science** - Laboratory calculations and conversions

## 📚 Technical Resources

### **Mathematical References**
- Geometric formula implementations
- Python math library utilization
- Numerical precision handling
- Expression evaluation techniques

### **Programming Concepts**
- Conditional logic structures
- User input processing
- Modular function design
- Mathematical computation accuracy

---

<div align="center">

**🧮 "Bringing advanced mathematics to everyone, one calculation at a time"**

*Built during Titan Hacks 2020 - San Marino Hack Club*

**⭐ Star this project if you found it useful for your mathematical needs!**

</div>
