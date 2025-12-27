# FPGA-Based GPS Navigation Processing System

## Overview
This project implements a modular FPGA-based GPS navigation processing system designed and verified using Verilog HDL and Vivado. The system simulates GPS position and velocity data, processes navigation updates, detects abnormal behavior (spoofing/intrusion), and supports a master enable switch.

## Features
- Modular RTL design (Verilog)
- FSM-based navigation processor
- Intrusion/spoofing detection logic
- Master control switch
- Clock-domain management
- Comprehensive testbench
- Synthesizable and FPGA-ready

## Architecture
![Block Diagram](docs/block_diagram.png)

## Modules
- `clk_divider`: Generates slower clock for navigation logic
- `gps_input_iface`: Simulates GPS position/velocity input
- `nav_processor`: FSM-controlled navigation update logic
- `intrusion_detector`: Detects abnormal position jumps
- `master_control`: Enables/disables system operation
- `gps_fpga_top`: Top-level FPGA integration module

## Simulation
Simulation was performed using Vivado Simulator. Testbenches validate:
- Normal operation
- Intrusion detection triggering
- Master switch behavior

![Simulation](docs/simulation_waveform.png)

## Tools Used
- Verilog HDL
- Xilinx Vivado
- FPGA Development Board (Basys 3 / Nexys A7)

## Results
- Fully synthesizable RTL
- Successful hardware deployment
- Clear separation of control and datapath
- Verified functionality through simulation and on-board testing

## Future Improvements
- UART output for position/velocity
- AXI-Lite interface
- Kalman filtering
- Real GPS NMEA parsing
