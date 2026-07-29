import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryBicategoriesLemmaCanonicalLaneLean

structure CoherenceTheoremPackage where
  bicategory : Type u
  pentagonIdentity : Prop
  unitAxioms : Prop
  macLaneCoherence : Prop

structure CoherenceTheoremEvidence (C : CoherenceTheoremPackage) where
  pentagonIdentityClosed : C.pentagonIdentity
  unitAxiomsClosed : C.unitAxioms
  macLaneCoherenceClosed : C.macLaneCoherence

def CoherenceTheoremClosed (C : CoherenceTheoremPackage) : Prop :=
  C.pentagonIdentity ∧ C.unitAxioms ∧ C.macLaneCoherence

theorem coherence_theorem_closed_from_evidence
    (C : CoherenceTheoremPackage) (E : CoherenceTheoremEvidence C) :
    CoherenceTheoremClosed C := by
  exact And.intro E.pentagonIdentityClosed
    (And.intro E.unitAxiomsClosed E.macLaneCoherenceClosed)

end CategoryTheoryBicategoriesLemmaCanonicalLaneLean
end HautevilleHouse