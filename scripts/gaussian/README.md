# Gaussian Scripts & Input Templates

Reusable Gaussian input templates for common computational chemistry jobs. Replace the placeholder geometry, charge/multiplicity, method, basis set, and scan coordinates as needed.

## Included templates

- `geometry_optimization.gjf` — geometry optimization with frequency calculation.
- `pes_scan.gjf` — relaxed PES scan using ModRedundant coordinates.
- `ts_optimization.gjf` — transition-state optimization and frequency calculation.
- `functional_basis_examples.gjf` — examples using different DFT functionals and basis sets.
- `split_basis_ecp.gjf` — mixed basis sets with ECP using `GenECP`.
- `spin_states.gjf` — examples for singlet, doublet, triplet, quartet and other multiplicities.

## Notes

- Always verify charge and multiplicity for your system.
- For transition states, confirm exactly one imaginary frequency corresponding to the reaction coordinate.
- For PES scans, edit the ModRedundant line to match the bond/angle/dihedral and scan range you want.
- For split basis/ECP jobs, ensure each atom group is assigned the intended basis set and the ECP block matches the heavy element.
