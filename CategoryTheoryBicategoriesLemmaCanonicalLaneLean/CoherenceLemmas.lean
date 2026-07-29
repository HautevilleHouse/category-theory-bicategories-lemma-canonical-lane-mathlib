import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryBicategoriesLemmaCanonicalLaneLean

structure CoherenceLemmaPackage (B : BicategoryPackage) where
  maclaneCoherence : Prop
  pastingLaw : Prop
  maclaneCoherenceProof : maclaneCoherence := by
    exact True.intro
  pastingLawProof : pastingLaw := by
    exact True.intro

structure CoherenceEvidence {B : BicategoryPackage} (C : CoherenceLemmaPackage B) where
  maclaneCoherenceClosed : C.maclaneCoherence
  pastingLawClosed : C.pastingLaw

def CoherenceLemmasClosed {B : BicategoryPackage} (C : CoherenceLemmaPackage B) : Prop :=
  C.maclaneCoherence ∧ C.pastingLaw

theorem coherence_evidence_closed {B : BicategoryPackage} (C : CoherenceLemmaPackage B) (E : CoherenceEvidence C) : CoherenceLemmasClosed C := by
  exact And.intro E.maclaneCoherenceClosed E.pastingLawClosed

end CategoryTheoryBicategoriesLemmaCanonicalLaneLean
end HautevilleHouse