# Maximum Power Point Tracker for Solar Panels

This project was done as part of my studies at university. It's intended use case is for my [University's solar boat team](https://www.hs-emden-leer.de/studierende/fachbereiche/technik/projekte/solarboot).

![render](https://github.com/wilhelmzeuschner/MPPT_Solar_KiCAD_Rev2.1/raw/main/doc/files%20for%20GitHub%20doc/img/pcb_render_top.png "3D Render")

![photo](https://github.com/wilhelmzeuschner/MPPT_Solar_KiCAD_Rev2.1/raw/main/doc/files%20for%20GitHub%20doc/img/mppt-image.png "Photo of the PCB")

## Technical Overview:

- 150W input power
- Boost Converter: Uin < Uout
- STM32 Microcontroller
- CAN Communications (software support lacking as of April 2022)


## How to use this repo:

### Code:
The source code is located here: https://github.com/wilhelmzeuschner/MPPT_Solar_KiCAD_Rev2.1/tree/main/code/MPPT_Main

Platform IO was used for programming, just clone the repo and open the folder / workspace. The Arduino framework was used for the firmware.

### PCB:
The PCB was designed with KiCAD V6, the files are located here: https://github.com/wilhelmzeuschner/MPPT_Solar_KiCAD_Rev2.1/tree/main/pcb/kicad_files

### Bill of Materials (BOM):
The BOM file is also provided, although some parts are not available as of April 2022 due to the semiconductor shortage.
https://github.com/wilhelmzeuschner/MPPT_Solar_KiCAD_Rev2.1/tree/main/bom

### CAD Files for a 3D-printable Case:
https://github.com/wilhelmzeuschner/MPPT_Solar_KiCAD_Rev2.1/tree/main/cad

![photo](https://github.com/wilhelmzeuschner/MPPT_Solar_KiCAD_Rev2.1/raw/main/cad/case_fusion.png "Case")



## Further documentation:

This project was documented extensively. The technical report can be found here:
https://github.com/wilhelmzeuschner/MPPT_Solar_KiCAD_Rev2.1/blob/main/doc/latex/pdf/Projektarbeit_MPPT_Wilhelm_Zeuschner_GitHub.pdf

### License:

MIT License
