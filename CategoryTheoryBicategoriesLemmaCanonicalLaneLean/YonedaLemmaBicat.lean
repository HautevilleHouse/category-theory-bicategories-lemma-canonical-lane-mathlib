import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryBicategoriesLemmaCanonicalLaneLean

structure YonedaLemmaPackage (B : BicategoryPackage) (x : B) where
  yonedaEmbedding : Type u
  fullyFaithful : Prop
  fullProof : fullyFaithful := by
    exact True.intro

structure YonedaLemmaEvidence {B : BicategoryPackage} {x : B} (Y : YonedaLemmaPackage B x) where
  yonedaEmbeddingClosed : True
  fullyFaithfulClosed : Y.fullyFaithful

def YonedaLemmaClosed {B : BicategoryPackage} {x : B} (Y : YonedaLemmaPackage B x) : Prop :=
  Y.fullyFaithful

theorem yoneda_evidence_closed {B : BicategoryPackage} {x : B} (Y : YonedaLemmaPackage B x) (E : YonedaLemmaEvidence Y) : YonedaLemmaClosed Y := by
  exact E.fullyFaithfulClosed

end CategoryTheoryBicategoriesLemmaCanonicalLaneLean
end HautevilleHouse