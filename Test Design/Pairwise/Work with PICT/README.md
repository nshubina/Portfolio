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

`IF [Brand]="Apple" THEN [OS]="iOS";`<br>
`IF [Brand]="Samsung" OR [Brand]="Lenovo" OR [Brand]="Xiaomi" THEN [OS]="Android";`<br>
`IF [Type]="Flip phone" THEN NOT [Brand]="Apple" AND NOT [OS]="iOS";`

Next step I run the PICT app in the console:

![image](https://github.com/user-attachments/assets/29fd5d9e-5d53-4c29-b919-0caf1b939273)

After running PICT app I use created *example.txt* file in the following approach:

![image](https://github.com/user-attachments/assets/7821b98c-30e6-4f63-89db-92e568da82fc)



# Result
Also, I add result into the output.txt file
And duplicate them in the table format.

| ID | Brand  | OS      | Type         | Display type | Color |
|----|--------|---------|--------------|---------------|--------|
| 1  | Lenovo | Android | Smartphone   | IPS           | Gold   |
| 2  | Apple  | iOS     | Smartphone   | OLED          | Black  |
| 3  | Samsung| Android | Flip phone   | Retina        | Red    |
| 4  | Lenovo | Android | Flip phone   | Retina        | White  |
| 5  | Samsung| Android | Flip phone   | OLED          | Gold   |
| 6  | Xiaomi | Android | Smartphone   | Retina        | Black  |
| 7  | Xiaomi | Android | Flip phone   | IPS           | Gold   |
| 8  | Apple  | iOS     | Smartphone   | Retina        | Gold   |
| 9  | Lenovo | Android | Flip phone   | IPS           | Black  |
| 10 | Samsung| Android | Smartphone   | IPS           | Gray   |
| 11 | Xiaomi | Android | Smartphone   | OLED          | Red    |
| 12 | Samsung| Android | Smartphone   | IPS           | White  |
| 13 | Apple  | iOS     | Smartphone   | IPS           | White  |
| 14 | Samsung| Android | Smartphone   | Retina        | Black  |
| 15 | Apple  | iOS     | Smartphone   | IPS           | Red    |
| 16 | Lenovo | Android | Flip phone   | OLED          | Red    |
| 17 | Xiaomi | Android | Flip phone   | Retina        | Gray   |
| 18 | Xiaomi | Android | Flip phone   | OLED          | White  |
| 19 | Apple  | iOS     | Smartphone   | OLED          | Gray   |
| 20 | Lenovo | Android | Flip phone   | OLED          | Gray   |
