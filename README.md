<div align="center">
  <h1 align="center"> CFD-Cusp-Feeder </h1>
</div>

This repository provides all the code files in the paper "Exploring the potential of a 'cusp feeder' as a novel mixer using direct numerical simulation".

<br>

## Installing Lethe

For instructions on installation, please refer to the <a href="https://chaos-polymtl.github.io/lethe/documentation/installation/installation.html" target="_blank">Lethe installation guide</a>.

<br>

## Code explanation

### [cusp_2d_mesh.geo](./cusp_2d_mesh.geo)

This is the GMSH .geo file that contains code to edit the computational domain. In the paper, the geometry file is changed to alter the inter-cylinder distance and the shape of the rollers. Please refer to the <a href="https://gmsh.info/" target="_blank">GMSH website</a> for installation and its reference manual.

### [cusp_2d_mesh.msh](./cusp_2d_mesh.msh)

This is the GMSH .msh file created from the .geo file and called upon by Lethe.

### [cusp_2d_fluid.prm](./cusp_2d_fluid.prm)

This is the Lethe .prm file for the...

More information about Lethe can be found on Github <a href="https://github.com/chaos-polymtl/lethe" target="_blank">here</a>.

### [cusp_2d_tracer.prm](./cusp_2d_tracer.prm)

This is the .prm file for running a tracer simulation using the same computational domain. Although it is not featured in the paper because the code has small problems, we thought it would be useful to include it in this repository for further studies.

Once the simulations have run, the results can be analysed by opening the associated .pvd files in <a href="https://www.paraview.org/" target="_blank">Paraview</a>.

<br>

## Citing

Please cite the accompanying paper:
> INSERT CITATION
