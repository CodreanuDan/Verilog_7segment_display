# Verilog 7-Segment Display Project 🚀

This project demonstrates the implementation of a 7-segment display driver using Verilog Hardware Description Language (HDL). Two different modeling methods are used: **structural** and **behavioral**, and a testbench is created to verify their equivalence.

## Project Overview 📝

The project involves creating a 7-segment display driver using two approaches:

1. **Structural Modeling** 🏗️: This method requires determining the minimized Boolean functions for each of the 7 outputs of the circuit. The implementation uses Verilog language primitives such as basic gates.

2. **Behavioral Modeling** 🎭: This approach uses an `always` block and a `case` statement to define the logic for the 7-segment display in a more abstract form.

3. **Testbench for Equivalence Demonstration** 🔍: A testbench is developed to demonstrate the equivalence of the two methods. It instantiates both modules (structural and behavioral) and applies the same set of stimuli to each. The outputs from both modules are compared using a comparator to ensure they are identical for every possible input combination.

## Description of Methods ⚙️

### 1. Structural Modeling 🏗️

The structural description involves creating Boolean expressions for each of the 7 segments (`a` to `g`) of the display. These expressions are minimized and implemented using Verilog's logical primitives like AND, OR, and NOT gates.

### 2. Behavioral Modeling 🎭

In the behavioral description, an `always` block with a `case` statement is used to define the output for each segment (`a` to `g`) based on the binary-coded decimal (BCD) input.

### 3. Equivalence Verification 🔍

To confirm that both the structural and behavioral descriptions function equivalently, a testbench applies the same input combinations to both implementations. A comparator checks that the outputs from both modules are identical across all possible input values.

## Usage 💻

1. Use Quartus or another Verilog simulation tool to open the project files.
2. Simulate both the structural and behavioral models to verify they drive the 7-segment display correctly.
3. Run the testbench script (`testbench_7seg.v`) to compare outputs from both models and demonstrate their equivalence.

## Conclusion 📊

This project showcases two different ways to implement a 7-segment display driver in Verilog. The structural method provides a low-level hardware description using Boolean functions, while the behavioral method offers a more abstract representation. The testbench confirms that both methods produce identical results for all input combinations.

## Visuals 📷

Below are visual representations related to the project:

- ![Schema for BCD to 7-Segment Display](https://github.com/user-attachments/assets/ea77d5bf-5f5d-47a0-b461-612e61f243bb)  
  *Figure 1: Schema of the Binary-Coded Decimal (BCD) to 7-Segment Display*

- ![Quartus Simulation Screenshot](https://github.com/user-attachments/assets/61bab610-bac1-464d-9105-22ad9d79371b)  
  *Figure 2: Simulation in Quartus showing output behavior*

- ![Behavioral Model Simulation](https://github.com/user-attachments/assets/4b7ff740-8c2f-4e8b-a9e7-f94b5d3c3f51)  
  *Figure 3: Simulation result of the Behavioral Model*

- ![Structural Model Simulation](https://github.com/user-attachments/assets/014c3efe-fc6a-4179-a37f-c19ba0b51872)  
  *Figure 4: Simulation result of the Structural Model*

- ![Equivalence Check Simulation](https://github.com/user-attachments/assets/b7376042-75db-4b85-89a6-06e8180aa83c)  
  *Figure 5: Equivalence Verification between Structural and Behavioral Models*
