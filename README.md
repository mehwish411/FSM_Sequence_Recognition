# FSM_Sequence_Recognition
This repository contains a Verilog implementation of a Finite State Machine (FSM) designed to recognize sequences of four consecutive 1s or four consecutive 0s in an input stream. The FSM outputs a high signal (z=1) whenever four consecutive 1s or 0s are detected, allowing for overlapping sequences.
Project Overview
In this FSM:

Input: w – a single-bit input representing a sequence of bits (either 1 or 0).
Output: z – a single-bit output that becomes 1 when four consecutive 1s or four consecutive 0s are detected.
Overlapping Sequences: Allowed. For instance, if w = 1 for five consecutive clock cycles, z will be high after the fourth and fifth cycles.
The FSM is implemented using a one-hot state assignment, where each unique state is represented by one of nine state flip-flops (y8 to y0). The FSM's logic expressions, as derived from the state diagram, are used to define transitions.

Table of Contents
1. Features
2. File Structure
3. Getting Started
4. FSM Design
5. Usage
6. Testing
7. License

Features
FSM Implementation: Detects four consecutive 1s or 0s, outputs z=1 on match.
Gate-Level and RTL: Includes both gate-level (one-hot encoding) and RTL (binary encoding) Verilog code.
Overlapping Sequences Supported: Continuous sequence detection.
