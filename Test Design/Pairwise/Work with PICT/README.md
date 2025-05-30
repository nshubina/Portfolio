# Pairwise Testing with PICT

This project uses pairwise testing with PICT to generate an optimized set of test cases for a filter-like feature

PICT (Pairwise Independent Combinatorial Testing) is a tool developed by Microsoft that automatically generates optimized test cases based on the pairwise method. It allows defining parameters, values, and constraints, making it especially useful for complex systems with many combinations.

The <a href="https://github.com/microsoft/pict" target="_blank">PICT tool </a>reads the input file and outputs efficient test combinations for coverage and validation.

# Task

The system under test includes the following input parameters:

- **Brand**: Samsung, Apple, Lenovo, Xiaomi
- **OS**: Android, iOS
- **Type**: Smartphone, Flip phone
- **Display type**: IPS, OLED, Retina
- **Color**: White, Black, Red, Gray, Gold

The **goal** is to minimize the number of test cases while ensuring that all valid pairs of input values are tested.

# Solution

First, I created a <a href="https://github.com/nshubina/Portfolio/blob/cf1616c7d073a48da7526c92ffd5ddafa1bdc9b2/Test%20Design/Pairwise/Work%20with%20PICT/example.txt" targget="_blank">example.txt</a> file with a list of test parameters. 

Then, to improve testing efficiency, I added several constraints to exclude invalid combinations that should not be tested:

`IF [Brand]="Apple" THEN [OS]="iOS";`

`IF [Brand]="Samsung" OR [Brand]="Lenovo" OR [Brand]="Xiaomi" THEN [OS]="Android";`

`IF [Type]="Flip phone" THEN NOT [Brand]="Apple" AND NOT [OS]="iOS";`




I run the PICT app in the console:

![image](https://github.com/user-attachments/assets/a102c207-2004-4a53-ad28-5db6eec79f3c)
