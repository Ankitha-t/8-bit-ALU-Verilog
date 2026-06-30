# 8-bit ALU Design and Verification using Verilog HDL

## Overview

This project implements an 8-bit Arithmetic Logic Unit (ALU) using Verilog HDL. The ALU performs arithmetic, logical, and shift operations selected using a 3-bit opcode.

The design was synthesized using Intel Quartus Prime Lite Edition and verified using ModelSim through a custom Verilog testbench.

---

## Features

- 8-bit Arithmetic Logic Unit
- Verilog RTL Design
- Functional Verification using ModelSim
- RTL Viewer
- Waveform Verification

---

## Supported Operations

| Opcode | Operation |
|---------|-----------|
|000|Addition|
|001|Subtraction|
|010|AND|
|011|OR|
|100|XOR|
|101|NOT|
|110|Left Shift|
|111|Right Shift|

---

## Tools Used

- Verilog HDL
- Intel Quartus Prime Lite Edition
- ModelSim Intel FPGA Edition

---

## Project Structure

```
ALU_8bit
│
├── rtl
│   └── alu_8bit.v
│
├── verification
│   └── alu_8bit_tb.v
│
├── screenshots
│   ├── rtl_viewer.png
│   ├── waveform.png
│   └── quartus_compile.png
│
├── simulation
│
├── README.md
```

---

## RTL Viewer

rtl_viewer.png

---

## Simulation Waveform

waveform.png

---

## Author

Ankitha Thammali
ECE Student
