Require Import Crypto.Arithmetic.PrimeFieldTheorems.
Require Import Crypto.Specific.solinas64_2e256m88x2e240m1.Synthesis.

(* TODO : change this to field once field isomorphism happens *)
Definition freeze :
  { freeze : feBW -> feBW
  | forall a, phiBW (freeze a) = phiBW a }.
Proof.
  Set Ltac Profiling.
  Time synthesize_freeze ().
  Show Ltac Profile.
Time Defined.

Print Assumptions freeze.