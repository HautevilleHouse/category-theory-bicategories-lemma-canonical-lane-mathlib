import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryBicategoriesLemmaCanonicalLaneLean.BicategoryStructure

namespace HautevilleHouse
namespace CategoryTheoryBicategoriesLemmaCanonicalLaneLean

structure BicategoryCoherencePackage (B : BicategoryStructure) where
  pentagonIdentity : ∀ {a b c d e : B.objects} (f : B.oneMorphisms a b) (g : B.oneMorphisms b c) (h : B.oneMorphisms c d) (i : B.oneMorphisms d e),
    B.twoMorphisms (B.compositionOneMorphism (B.compositionOneMorphism (B.compositionOneMorphism i h) g) f)
                    (B.compositionOneMorphism i (B.compositionOneMorphism h (B.compositionOneMorphism g f)))
  triangleIdentity : ∀ {a b c : B.objects} (f : B.oneMorphisms a b) (g : B.oneMorphisms b c),
    B.twoMorphisms (B.compositionOneMorphism g (B.identityOneMorphism b)) (B.compositionOneMorphism g f)
  coherenceConditionsSatisfied : Prop

structure BicategoryCoherenceEvidence {B : BicategoryStructure} (C : BicategoryCoherencePackage B) where
  pentagonIdentityClosed : C.pentagonIdentity
  triangleIdentityClosed : C.triangleIdentity
  coherenceConditionsSatisfiedClosed : C.coherenceConditionsSatisfied

def BicategoryCoherenceClosed {B : BicategoryStructure} (C : BicategoryCoherencePackage B) : Prop :=
  C.pentagonIdentity ∧ C.triangleIdentity ∧ C.coherenceConditionsSatisfied

theorem bicategory_coherence_closed_from_evidence {B : BicategoryStructure} (C : BicategoryCoherencePackage B) (E : BicategoryCoherenceEvidence C) :
    BicategoryCoherenceClosed C := by
  exact And.intro E.pentagonIdentityClosed (And.intro E.triangleIdentityClosed E.coherenceConditionsSatisfiedClosed)

end CategoryTheoryBicategoriesLemmaCanonicalLaneLean
end HautevilleHouse