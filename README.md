# FSM-Based ALU Architecture (VHDL)

This project implements an **FSM-controlled 8-bit Arithmetic Logic Unit (ALU)** in VHDL.  
It supports arithmetic and logical operations, integrates modular datapath and control logic,  
and was validated through simulation and FPGA synthesis.

## Features
- FSM-controlled execution of ALU operations
- Arithmetic: Add, Subtract, Multiply, Divide
- Logical: XOR, XNOR, Compare
- Modular VHDL design (datapath + control FSM)
- FPGA validation with correct carry-out handling and opcode execution

## Tools & Environment
- VHDL (Quartus Prime Lite Edition)
- Simulation & Synthesis verification

## Repository Structure
- `src/` – VHDL source['FSM Design'](https://github.com/Olayinka2002/FSM_ALU_Design/blob/main/FSM.vhd), ['ALU Design'](https://github.com/Olayinka2002/FSM_ALU_Design/blob/main/ALU.vhd), 
- `sim/` – Testbenches and simulation files
- `docs/` – ['ALU Controller Design]<img width="1772" height="726" alt="image" src="https://github.com/user-attachments/assets/d190f1f5-5b7e-4447-a2b0-833827b4a3ba" />
          - <img width="1881" height="581" alt="image" src="https://github.com/user-attachments/assets/0e95257c-e3af-4f9c-ba81-d9c90d93f4b7" />
          -Results of the ALU Controller unit
          - 


## Results
- Validated ALU functionality through simulation.
- Demonstrated proper datapath–control interaction
- Verified arithmetic and logical operations with test cases
- <img width="1881" height="375" alt="image" src="https://github.com/user-attachments/assets/72e04c3a-fee7-41a6-bf50-7aa8f3d3c921" />
- The results are based on the logic of the FSM are based on this flow path:
    <img width="772" height="435" alt="image" src="https://github.com/user-attachments/assets/622a44bc-a9cc-424d-b8a1-7a45adbac7a1" />
    -In the FSM, we have the user defined states, idle, accumlate, fetch, Wr_Result, Process as the image aboves show, as using cases statements, we determine the next state based on the current state
-This FSM was then implemented into our ALU Architecture design to control the Write and select bits of the design.



## Author
Olayinka Olowookere  

