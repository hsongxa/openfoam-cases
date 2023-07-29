# openfoam-cases
This repository contains a set of benchmark problems each in a separate directory as a case that can be simulated by `OpenFOAM`. The cases are tested with `OpenFOAM 8`.

Instead of using the built-in mesh generator of `OpenFOAM`, all cases use meshes generated from `Gmsh` version `4.4.1` (but exported as "`Version 2 ASCII`" of the `.msh` format, otherwise `OpenFOAM 8` will have trouble converting them). In this way, simulation results from other code can be compared with `OpenFOAM` using exactly the same mesh. The companion `.geo` files that generated the meshes are included in the root directory.

The general steps of running these cases are:

1. copy the case folder to the `run` folder of the `OpenFOAM` installation
2. `cd` into the copied case folder
3. execute `gmshToFoam <mesh-file-name.msh>`, where `<mesh-file-name.msh>` is the name of the mesh file contained in the case folder
4. run `checkMesh` to make sure the mesh has been successfully converted by `OpenFOAM`
5. move the `boundary` file, if exists, to the generated `constant/polyMesh` folder, overwriting the existing one
6. run `renumberMesh -overwrite`
7. move files of `transportProperties`, `turbulenceProperties`, etc., to the generated `constant` folder
8. run the `OpenFOAM` application (`simpleFoam`, `icoFoam`, ..., etc.) as stated in the `/system/controlDict` file


## List of problems (more to come...)

- ### cubic cavity

  The problem of lid-driven flow in a cubic cavity as documented in

  **H. Ding , C. Shu, K.S. Yeo , and D. Xu, "Numerical computation of three-dimensional incompressible viscous flows in the primitive variable form by local multiquadric differential quadrature method", *Comput. Methods Appl. Mech. Engrg*, 195 (2006), 516–533**

- ### backward-facing step flow

  The problem of backward-facing step flow as documented in

  **B. F. Armaly, F. Durst, J. C. F. Pereira, and B. Schonung, "Experimental and theoretical investigation of backward-facing step flow", *J. Fluid Mech.*, 127 (1983), 473-496**

  and

  **T. P. Chiang and Tony W. H. Sheu, "A numerical revisit of backward-facing step flow problem", *Physics of Fluids*, 11(4), 1999, 862-874**

- ### flow around a cylinder

  The 3D case of the problem of flow around a cylinder with circular cross-section as documented in

  **M. Schäfer, S. Turek, F. Durst, E. Krause, and R. Rannacher, "Benchmark computations of laminar flow around a cylinder", *Flow Simulation with High-Performance Computers II*, 1996, 547-566**
