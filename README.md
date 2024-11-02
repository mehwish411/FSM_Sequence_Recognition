# FSM_Sequence_Recognition
This repository contains a Verilog implementation of a Finite State Machine (FSM) designed to recognize sequences of four consecutive 1s or four consecutive 0s in an input stream. The FSM outputs a high signal (z=1) whenever four consecutive 1s or 0s are detected, allowing for overlapping sequences.

## Project Overview
**Input**: w – a single-bit input representing a sequence of bits (either 1 or 0).
**Output**: z – a single-bit output that becomes 1 when four consecutive 1s or four consecutive 0s are detected.
The FSM is implemented using a **one-hot state assignment**, where each unique state is represented by one of nine state flip-flops (y8 to y0). The FSM's logic expressions, as derived from the state diagram, are used to define transitions.
**Gate-Level and RTL**: Includes both gate-level (one-hot encoding) and RTL (binary encoding) Verilog code.
**Overlapping Sequences Supported**: Continuous sequence detection.
