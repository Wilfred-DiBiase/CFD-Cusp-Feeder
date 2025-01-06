<div align="center">
  <h1 align="center"> CFD-Cusp-Feeder </h1>
</div>

This repository provides all the code files in the paper "Exploring the potential of a 'cusp feeder' as a novel mixer using direct numerical simulation".

## Installing Lethe

Please refer to the installation guide on the Lethe documentation page:

<a href="https://chaos-polymtl.github.io/lethe/documentation/installation/installation.html" target="_blank">Lethe Installation Documentation</a>

## Code explanation

### [cusp_2d_mesh.geo](./cusp_2d_mesh.geo)

This is the GMSH .geo file that contains code to edit the computational domain. In the paper, the geometry file is changed to alter the inter-cylinder distance and the shape of the rollers.

### [cusp_2d_mesh.msh](./cusp_2d_mesh.msh)

This is the GMSH .msh file created from the .geo file and called upon by Lethe.

### [cusp_2d_fluid.prm](./cusp_2d_fluid.prm)

This is the Lethe .prm file for the...

### [cusp_2d_tracer.prm](./cusp_2d_tracer.prm)

This is the .prm file to run a tracer simulation using the same computational domain. Although it is not featured in the paper because there are small problems with the code, we thought it would be useful to include it in this repository for further studies.

## Citing

Please cite the accompanying paper:
> INSERT CITATION
