# ORCA 6.1 Input Templates

Reusable templates based on the official ORCA 6.1 manual. They are examples: always adapt the molecular coordinates, charge, multiplicity, method, basis set, solvent, memory and parallel settings to the actual chemical problem.

Official manual: https://www.faccts.de/docs/orca/6.1/manual/

## Included templates

- `01_geometry_opt_freq.inp` — DFT geometry optimization followed by analytical frequencies.
- `02_relaxed_scan.inp` — relaxed potential-energy surface scan.
- `03_ts_opt_freq.inp` — transition-state optimization with an initial Hessian and frequencies.
- `04_neb_ts.inp` — NEB-TS reaction-path/TS search using reactant and product structures.
- `05_irc.inp` — intrinsic reaction coordinate calculation from a characterized TS.
- `06_functional_basis_examples.inp` — representative functional/basis combinations.
- `07_mixed_basis_ecp.inp` — per-element basis/ECP assignment using `%basis`.
- `08_spin_states.inp` — charge/multiplicity examples.
- `09_single_point_cpcm_smd.inp` — single-point DFT energy with implicit solvation examples.
- `10_dlpno_ccsdt.inp` — DLPNO-CCSD(T) single-point energy.
- `11_tddft.inp` — TD-DFT excited-state calculation.
- `12_nbo.inp` — NBO analysis template; requires a compatible NBO installation/license where applicable.
- `13_counterpoise_bsse.inp` — Boys-Bernardi counterpoise setup for a two-fragment complex.
- `14_goat.inp` — GOAT global/conformer search template.
- `15_qmmm.inp` — starting template/reference for ORCA multiscale QM/MM; system-specific setup is essential.

## Notes

- ORCA 6.1 uses `! Opt` for geometry optimization and `! Freq` for analytical frequency calculations where available.
- Verify minima by the absence of imaginary frequencies; verify a TS by one chemically meaningful imaginary mode.
- For difficult TS searches, ORCA provides NEB-TS and ZOOM-NEB-TS workflows.
- ORCA 6.1 includes GOAT for global geometry/conformer searching.
- Parallel execution is controlled with `%pal nprocs N end`; memory is commonly controlled using `%maxcore` in MB per process.
- Modern ORCA defaults and approximations can differ from older releases; do not copy old ORCA input syntax blindly.
- Relativistic calculations require compatible relativistic basis sets; ORCA 6.x no longer relies on the older automatic substitutions in the same way.
- Counterpoise-corrected geometry optimization is a special workflow in ORCA 6.x and should use the documented compound-script approach rather than simply adding `Opt` to a counterpoise input.
