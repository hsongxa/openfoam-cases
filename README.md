# openfoam-cases
This repository contains a set of benchmark problems each in a separate directory as a case that can be simulated by **`OpenFOAM`**. The cases are tested with **`OpenFOAM 8`**.

Instead of using the built-in mesh generator of **`OpenFOAM`**, all cases use meshes generated from **`Gmsh`**. In this way, simulation results from other code can be compared with **`OpenFOAM`** using exactly the same mesh. The general steps of running these cases are:

...

Each case has a companion **`PDF`** file in the root directory that captures the name of the **`OpenFOAM`** application used for the case and the corresponding simulation results.

## List of problems

- ### cubic cavity

  The problem of lid-driven flow in a cubic cavity as documented in

  **H. Ding , C. Shu, K.S. Yeo , and D. Xu, "Numerical computation of three-dimensional incompressible viscous flows in the primitive variable form by local multiquadric differential quadrature method", *Comput. Methods Appl. Mech. Engrg*, 195 (2006), 516–533**

- ### backward-facing step flow

  The problem of backward-facing step flow as documented in

  **B. F. Armaly, F. Durst, J. C. F. Pereira, and B. Schonung, "Experimental and theoretical investigation of backward-facing step flow", *J. Fluid Mech.*, 127 (1983), 473-496**

  and

  **T. P. Chiang and Tony W. H. Sheu, "A numerical revisit of backward-facing step flow problem", *Physics of Fluids*, 11(4), 1999, 862-874**

- ### flow around a cylinder

  The 3D case of the problem of flow around a cylinder with square cross-section as documented in

  **M. Schäfer, S. Turek, F. Durst, E. Krause, and R. Rannacher, "Benchmark computations of laminar flow around a cylinder", *Flow Simulation with High-Performance Computers II*, 1996, 547-566**
