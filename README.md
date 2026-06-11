## Team: B14-MX_UPP_INAOE <br>Project: ElectrochemID

An Open-Source Integrated Potentiostat for AI-Driven Electrochemical Fingerprinting and Sample Identification.

## Team members

|Name|Discord|Github|Experience|Role|
|----|-------|------|----------|----|
|Erick Esau Castañon|erickcastanon_11339|erickcast369|Undergraduate|Member|
|Roberto Cuauhtémoc|robertocuauhtemoc|RobertoCuauhtemoc|Undergraduate|Member|
|Luis Vidal Guzman|vidal07.02_57039|VidalArroyo19|Undergraduate|Member|
|Mariana Romero|mariana09_12|marianaromero12|Undergraduate|Member|
|Luis Carlos Alvarez|lcas_56805|lucaalsi|Graduate|Team lead|

## Quick Links

[Github repository](https://github.com/RobertoCuauhtemoc/B14-MX_UPP_INAOE)

[Proposal Slide](link)

## What is electrochem id?

ElectroChemID proposes the design, implementation, and validation of a low-cost potentiostat ASIC,developed using 
open-source microelectronics tools. The system is oriented toward the acquisition of cyclic voltammetry signals 
using commercial screen-printed electrodes (SPE), commonly used in laboratories for their affordable cost, 
portability, and standard three-electrode configuration (WE, CE, RE).

Conventional electrochemical sensors are designed to detect a single specific moleculeusing biorecognition elements
such as enzymes, antibodies, or functionalized materials. This approach, although precise, involves an enormous cost:
it requires developing a completely different sensor for each application. Development times are extended, 
manufacturing costs scale up, and the system's scalability is limited to what it was originally designed for.

The project demonstrates that a simplified architecture based on moderate-resolution DAC and ADC converters (8 bits) is 
capable of capturing electrochemical fingerprints characteristic of different substances through cyclic voltametry. The
acquired signals contain sufficient discriminative information to enable sample classification an characterization using
artificial intelligence algorithms, even when obtained with an integrated potensiostat of simplified architecture and 
moderate resolution

The project does NOT aim to compete with high-precision laboratory instrumentation. Its success is measured by the 
ability to capture sufficient electrochemical information for classification tasks, not by the accuracy in the 
quantification of specific analytes.

## Status

- [ ] Schematic
- [ ] Simulation
- [ ] Layout
- [ ] LVS

## Goals

1. Design and validate an integrated potentiostat capable of acquiring electrochemical fingerprints through cyclic voltammetry using commercial screen-printed electrodes.
2. Demonstrate that a simplified and accessible integrated circuit architecture can enable electrochemical fingerprinting without relying on laboratory-grade instrumentation.
