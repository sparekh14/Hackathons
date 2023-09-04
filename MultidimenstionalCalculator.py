# TitanHacks 2020
# Samarth Parekh

import math

# Heading
print("1. Simple Calculator\n2. Formula Calculator\n3. Converter")
calc_choice = int(input("Enter the number of the calculator you want to open: "))

# SIMPLE CALCULATOR
if (calc_choice == 1):
    print('\n\nSimple Calculator\n')
    print('1. Add/Subtract/Divide/Multiply/Exponents\n2. Roots\n')
    calc_input = int(input("Enter the value of the type of equation you want to solve: "))
    if (calc_input == 1):
        print("IMPORTANT: If you want to use exponents do the following: 2**3. The 2 is an example of a base. The 3 is the power you want to raise your base.")
        # Evaluates the expression
        equation1 = str(input("Enter your expression: "))
        print(eval(equation1))
        breakpoint()
    elif (calc_input == 2):
        equation2 = int(input("Enter the number you want under the root symbol: "))
        root = int(input("Enter the value of the root: "))
        # Evaluates the expression
        evaluated_equation2 = equation2**(1/root)
        print(evaluated_equation2)
        breakpoint()




# FORMULA CALCULATOR
elif (calc_choice == 2):
    print('Formula Calculator\n')
    print("1. Perimeter/Circumference\n2. Area\n3. Volume\n4. Surface Area\n5. Quadratic Formula\n6. Pythagorean Formula")
    formula_input = int(input("Enter the corresponding number of the formula you want to use: "))
    shapes1 = ["square", "rectangle", "circle", "triangle", "trapezoid", "parallelogram", "pentagon", "hexagon",
               "heptagon", "octagon"]
    if (formula_input == 1):
        shape_choice = str(input("Enter the shape which you want to use (enter in LOWERCASE): "))
        if shape_choice in shapes1:
            if shape_choice == "square":
                length = float(input("Enter the length: "))
                perimeter = 4*length
                print("The perimeter is %f\n" % perimeter)
                breakpoint()
            if shape_choice == "rectangle":
                length = float(input("Enter the length: "))
                width = float(input("Enter the width: "))
                perimeter = 2*length + 2*width
                print("The perimeter is %f\n" % perimeter)
                breakpoint()
            if shape_choice == "circle":
                diameter = float(input("Enter the diameter: "))
                circumference = math.pi*diameter
                print("The circumference is %f\n" % circumference)
                breakpoint()
            if shape_choice == "triangle":
                side1 = float(input("Enter the length of the first side: "))
                side2 = float(input("Enter the length of the second side: "))
                side3 = float(input("Enter the length of the third side: "))
                perimeter = side1 + side2 + side3
                print("The perimeter is %f\n" % perimeter)
                breakpoint()
            if shape_choice == "trapezoid":
                side1 = float(input("Enter the length of the first side: "))
                side2 = float(input("Enter the length of the second side: "))
                side3 = float(input("Enter the length of the third side: "))
                side4 = float(input("Enter the length of the third side: "))
                perimeter = side1 + side2 + side3 + side4
                print("The perimeter is %f\n" % perimeter)
                breakpoint()
            if shape_choice == "parallelogram":
                side1 = float(input("Enter the length of the first side: "))
                side2 = float(input("Enter the length of the second side: "))
                perimeter = 2*(side1 + side2)
                print("The perimeter is %f\n" % perimeter)
                breakpoint()
            if shape_choice == "pentagon":
                side = float(input("Enter the length of the side: "))
                perimeter = 5*side
                print("The perimeter is %f\n" % perimeter)
                breakpoint()
            if shape_choice == "hexagon":
                side = float(input("Enter the length of the side: "))
                perimeter = 6*side
                print("The perimeter is %f\n" % perimeter)
                breakpoint()
            if shape_choice == "heptagon":
                side = float(input("Enter the length of the side: "))
                perimeter = 7*side
                print("The perimeter is %f\n" % perimeter)
                breakpoint()
            if shape_choice == "octagon":
                side = float(input("Enter the length of the side: "))
                perimeter = 8*side
                print("The perimeter is %f\n" % perimeter)
                breakpoint()
        else:
            print("You have entered an invalid shape. We do not have that shape as of now. Please rerun to choose another shape.")
            breakpoint()
    if (formula_input == 2):
        shape_choice = str(input("Enter the shape which you want to use (enter in LOWERCASE): "))
        if shape_choice in shapes1:
            if shape_choice == "square":
                length = float(input("Enter the length: "))
                area = length**2
                print("The area is %f\n" % area)
                breakpoint()
            if shape_choice == "rectangle":
                length = float(input("Enter the length: "))
                width = float(input("Enter the width: "))
                area = length * width
                print("The area is %f\n" % area)
                breakpoint()
            if shape_choice == "circle":
                radius = float(input("Enter the radius: "))
                area = math.pi * (radius**2)
                print("The area is %f\n" % area)
                breakpoint()
            if shape_choice == "triangle":
                base = float(input("Enter the base: "))
                height = float(input("Enter the height: "))
                area = 0.5 * base * height
                print("The area is %f\n" % area)
                breakpoint()
            if shape_choice == "trapezoid":
                base1 = float(input("Enter the first base: "))
                base2 = float(input("Enter the second base: "))
                height = float(input("Enter the height: "))
                area = (base1 + base2) * (height/2)
                print("The area is %f\n" % area)
                breakpoint()
            if shape_choice == "parallelogram":
                base = float(input("Enter the base: "))
                height = float(input("Enter the height: "))
                area = base * height
                print("The area is %f\n" % area)
                breakpoint()
            if shape_choice == "pentagon":
                side = float(input("Enter the side length: "))
                apothem = float(input("Enter the height: "))
                area = (5/2) * side * apothem
                print("The area is %f\n" % area)
                breakpoint()
            if shape_choice == "hexagon":
                side = float(input("Enter the side length: "))
                area = 3 * (math.sqrt(3)/2) * (side ** 2)
                print("The area is %f\n" % area)
                breakpoint()
            if shape_choice == "heptagon":
                side = float(input("Enter the side length: "))
                area = (7/4) * ((side ** 2)/(math.tan(math.pi/7)))
                print("The area is %f\n" % area)
                breakpoint()
            if shape_choice == "octagon":
                side = float(input("Enter the side length: "))
                area = 2 * (1 + math.sqrt(2)) * (side **2)
                print("The area is %f\n" % area)
                breakpoint()
    if (formula_input == 3):
        shapes2 = ["cube", "cylinder", "rectangular prism", "sphere", "cone", "pyramid"]
        shape_choice2 = str(input("Enter the shape which you want to use (enter in LOWERCASE): "))
        if shape_choice2 in shapes2:
            if shape_choice2 == "cube":
                length = float(input("Enter the length: "))
                volume = length * 3
                print("The volume of the cube is %f\n" % volume)
                breakpoint()
            if shape_choice2 == "cylinder":
                radius = float(input("Enter the radius: "))
                height = float(input("Enter the height: "))
                volume = math.pi * height * radius ** 2
                print("The volume of the cylinder is %f\n" % volume)
                breakpoint()
            if shape_choice2 == "rectangular prism":
                length = float(input("Enter the length: "))
                width = float(input("Enter the width: "))
                height = float(input("Enter the height: "))
                volume = length * width * height
                print("The volume of the rectangular prism is %f\n" % volume)
                breakpoint()
            if shape_choice2 == "sphere":
                radius = float(input("Enter the radius: "))
                volume = (4 / 3) * math.pi * radius ** 3
                print("The volume of the sphere is %f\n" % volume)
                breakpoint()
            if shape_choice2 == "cone":
                radius = float(input("Enter the radius: "))
                height = float(input("Enter the height: "))
                volume = math.pi * (1 / 3) * height * radius ** 2
                print("The volume of the cone is %f\n" % volume)
                breakpoint()
            if shape_choice2 == "pyramid":
                length = float(input("Enter the length: "))
                width = float(input("Enter the width: "))
                height = float(input("Enter the height: "))
                volume = (height * width * length) / 3
                print("The volume of the pyramid is %f\n" % volume)
                breakpoint()
        else:
            print("You have entered an invalid shape. We do not have that shape as of now. Please rerun to choose another shape.")
            breakpoint()
    if (formula_input == 4):
        shapes2 = ["cube", "cylinder", "rectangular prism", "sphere", "cone", "pyramid"]
        shape_choice2 = str(input("Enter the shape which you want to use (enter in LOWERCASE): "))
        if shape_choice2 in shapes2:
            if shape_choice2 == 'cube':
                length = float(input("Enter the length: "))
                surface_area = 6 * length ** 2
                print("The surface area of the cube is %f\n" % surface_area)
                breakpoint()
            if shape_choice2 == "cylinder":
                radius = float(input("Enter the radius: "))
                height = float(input("Enter the height: "))
                surface_area = (2 * math.pi * radius * height) + (2 * math.pi * radius ** 2)
                print("The surface area of the cylinder is %f\n" % surface_area)
                breakpoint()
            if shape_choice2 == "rectangular prism":
                length = float(input("Enter the length: "))
                width = float(input("Enter the width: "))
                height = float(input("Enter the height: "))
                surface_area = 2 * (width * length + height * length + height * width)
                print("The surface area of the rectangular prism is %f\n" % surface_area)
                breakpoint()
            if shape_choice2 == "sphere":
                radius = float(input("Enter the radius: "))
                surface_area = 4 * math.pi * radius ** 2
                print("The surface area of the sphere is %f\n" % surface_area)
                breakpoint()
            if shape_choice2 == "cone":
                radius = float(input("Enter the radius: "))
                height = float(input("Enter the height: "))
                slant_height = float(input("Enter the slant height: "))
                surface_area = (math.pi * radius ** 2) + (math.pi * radius * slant_height)
                print("The surface area of the cone is %f\n" % surface_area)
                breakpoint()
            if shape_choice2 == "pyramid":
                length = float(input("Enter the length: "))
                height = float(input("Enter the height: "))
                slant_height = float(input("Enter the slant height: "))
                surface_area = ((1 / 2) * height * length ** 2) + (length ** 2)
                print("The surface area of the pyramid is %f\n" % surface_area)
                breakpoint()
        else:
            print("Wrong input! You entered an invalid value!")
            breakpoint()
    if (formula_input == 5):
        a = float(input("Enter the value of a: "))
        b = float(input("Enter the value of b: "))
        c = float(input("Enter the value of c: "))
        disc = (b ** 2) - 4 * a * c
        if disc > 0:
            x1 = (-b + math.sqrt(disc))/(2 * a)
            x2 = (-b - math.sqrt(disc))/(2 * a)
            print("The two real roots are %f and %f\n" % (x1, x2))
            breakpoint()
        elif disc < 0:
            print("Two imaginary roots\n")
            neg_disc = math.sqrt(-disc)
            two_a = 2 * a
            print("x = (-%f + %fi/%f\n" % (b, neg_disc, two_a))
            breakpoint()
        else:
            x1 = -b / (2 * a)
            print("One real root only: %f\n" % x1)
            breakpoint()
    else:
        print("Wrong input! You entered an invalid value!")
        breakpoint()
    if (formula_input == 6):
        print("1. Find missing leg\n2. Find the hypotenuse")
        user_choice = int(input("Enter the corresponding value of what you will like to find: "))
        if user_choice == 1:
            leg1 = float(input("Enter the value of the known leg: "))
            hyp = float(input("Enter the value of the hypotenuse: "))
            missing_leg = math.sqrt((hyp ** 2) - (leg1 ** 2))
            print("The missing leg is %f\n." % missing_leg)
            breakpoint()
        elif user_choice == 2:
            leg1 = float(input("Enter the value of the known leg: "))
            leg2 = float(input("Enter the value of the other known leg: "))
            missing_hypotenuse = math.sqrt((leg1 ** 2) + (leg2 ** 2))
            print("The hypotenuse is %f\n" % missing_hypotenuse)
            breakpoint()
    else:
        print("Wrong input! You entered an invalid value!")
        breakpoint()


# CONVERTER
if(calc_choice == 3):
    print("Temperature")
    print("1. Convert from fahrenheit to celsius\n2. Convert from fahrenheit to kelvin\n3. Convert from celsius to fahrenheit")
    print("4. Convert from celsius to kelvin\n5. Convert from kelvin to fahrenheit\n6. Convert from kelvin to celsius")
    user_choice = int(input("Enter the corresponding value for which measure you would like to convert: "))
    temp1 = float(input("Enter the value of the temperature: "))
    if user_choice == 1:
        result = (temp1 - 32) * 5 / 9
        print("The converted temperature is %f" % result)

    elif user_choice == 2:
        result = (temp1 - 32) * 5 / 9
        result += 273.15
        print("The converted temperature is %f" % result)

    elif user_choice == 3:
        result = temp1 * 1.8 + 32
        print("The converted temperature is %f" % result)

    elif user_choice == 4:
        result = temp1 + 273.15
        print("The converted temperature is %f" % result)

    elif user_choice == 5:
        result = temp1 - 273.15
        new_result = result * 1.8 +32
        print("The converted temperature is %f" % new_result)

    elif user_choice == 6:
        result = temp1 - 273.15
        print("The converted temperature is %f" % result)

    else:
        print("Invalid option")
