import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryBicategoriesLemmaCanonicalLaneLean.BicategoryStructure

namespace HautevilleHouse
namespace CategoryTheoryBicategoriesLemmaCanonicalLaneLean

structure BicategoryLemmaPackage (B : BicategoryPackage) where
  coherenceConditions : Prop
  strictificationExists : Prop
  yonedaEmbeddingBicategorical : Prop
  coherenceConditionsClosed : coherenceConditions
  strictificationExistsClosed : strictificationExists
  yonedaEmbeddingBicategoricalClosed : yonedaEmbeddingBicategorical

structure BicategoryLemmaEvidence {B : BicategoryPackage} (L : BicategoryLemmaPackage B) where
  coherenceConditionsClosed : L.coherenceConditions
  strictificationExistsClosed : L.strictificationExists
  yonedaEmbeddingBicategoricalClosed : L.yonedaEmbeddingBicategorical

def BicategoryLemmaClosed {B : BicategoryPackage} (L : BicategoryLemmaPackage B) : Prop :=
  L.coherenceConditions ∧ L.strictificationExists ∧ L.yonedaEmbeddingBicategorical

theorem bicategory_lemma_closed_from_evidence {B : BicategoryPackage} (L : BicategoryLemmaPackage B) (E : BicategoryLemmaEvidence L) : BicategoryLemmaClosed L := by
  exact And.intro E.coherenceConditionsClosed (And.intro E.strictificationExistsClosed E.yonedaEmbeddingBicategoricalClosed)

end CategoryTheoryBicategoriesLemmaCanonicalLaneLean
end HautevilleHouse