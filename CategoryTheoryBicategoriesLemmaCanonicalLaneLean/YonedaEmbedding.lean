import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryBicategoriesLemmaCanonicalLaneLean

structure YonedaEmbeddingPackage where
  categoryA : Type u
  functorToSets : Type v
  fullyFaithful : Prop
  representationTheorem : Prop

structure YonedaEmbeddingEvidence (Y : YonedaEmbeddingPackage) where
  fullyFaithfulClosed : Y.fullyFaithful
  representationTheoremClosed : Y.representationTheorem

def YonedaEmbeddingClosed (Y : YonedaEmbeddingPackage) : Prop :=
  Y.fullyFaithful ∧ Y.representationTheorem

theorem yoneda_embedding_closed_from_evidence
    (Y : YonedaEmbeddingPackage) (E : YonedaEmbeddingEvidence Y) :
    YonedaEmbeddingClosed Y := by
  exact And.intro E.fullyFaithfulClosed E.representationTheoremClosed

end CategoryTheoryBicategoriesLemmaCanonicalLaneLean
end HautevilleHouse