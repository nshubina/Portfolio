# Pairwise Testing with PICT

This project uses pairwise testing with PICT to generate an optimized set of test cases for a filter-like feature

PICT (Pairwise Independent Combinatorial Testing) is a tool developed by Microsoft that automatically generates optimized test cases based on the pairwise method. It allows defining parameters, values, and constraints, making it especially useful for complex systems with many combinations.

The <a href="https://github.com/microsoft/pict" target="_blank">PICT tool </a>reads the input file and outputs efficient test combinations for coverage and validation.

# Task

The system under test includes the following input parameters:

- Brand: Samsung, Apple, Lenovo, Xiaomi
- OS: Android, iOS
- Type: Smartphone, Flip phone
- Display type: IPS, OLED, Retina
- Color: White, Black, Red, Gray, Gold

The goal is to minimize the number of test cases while ensuring that all valid pairs of input values are tested and the constraints are respected.
