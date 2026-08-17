## Gaussian Scripts & Input Templates

Reusable Gaussian input templates for common computational chemistry jobs. Replace the example geometry, charge/multiplicity, method, basis set, solvent, scan coordinates, and model layers as appropriate for your system.

## Structure optimization and reaction pathways

- `geometry_optimization.gjf` — geometry optimization with frequency calculation.
- `pes_scan.gjf` — relaxed PES scan using ModRedundant coordinates.
- `ts_optimization.gjf` — transition-state optimization and frequency calculation.
- `07_irc.gjf` — intrinsic reaction coordinate calculation starting from a verified TS checkpoint.

## Electronic structure and energy

- `functional_basis_examples.gjf` — examples using different DFT functionals and basis sets.
- `split_basis_ecp.gjf` — mixed basis sets with ECP using `GenECP`.
- `spin_states.gjf` — examples for different charge/spin multiplicities.
- `08_single_point_smd.gjf` — higher-level single-point energy with SMD implicit solvation.
- `10_nbo.gjf` — NBO/population-analysis template.
- `11_counterpoise_bsse.gjf` — two-fragment counterpoise calculation for BSSE correction.

## Excited states and multiscale calculations

- `09_tddft.gjf` — TD-DFT vertical excitation template with implicit solvent.
- `12_oniom.gjf` — two-layer ONIOM geometry-optimization template.

## Important notes

- Always verify charge and multiplicity for your actual system.
- For a transition state, confirm exactly one relevant imaginary frequency and verify its normal mode.
- IRC calculations should normally be started from a properly optimized and characterized TS.
- For PES scans, edit the ModRedundant coordinate indices, number of steps, and step size.
- For split basis/ECP calculations, make sure each atom group is assigned the intended basis and the ECP block corresponds to the heavy element.
- Change solvent names and methods according to the scientific problem; the supplied choices are examples, not universal recommendations.
- Counterpoise fragment charges/multiplicities must be adapted to the real fragments.
- ONIOM layer assignments and link atoms require careful setup for the actual molecular model.
