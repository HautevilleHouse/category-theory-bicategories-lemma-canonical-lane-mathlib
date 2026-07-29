import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryBicategoriesLemmaCanonicalLaneLean

structure BicategoricalYonedaPackage where
  bicategory : Type u
  weakFunctor : Type v
  biequivalence : Prop
  yonedaEmbedding : Prop

structure BicategoricalYonedaEvidence (B : BicategoricalYonedaPackage) where
  biequivalenceClosed : B.biequivalence
  yonedaEmbeddingClosed : B.yonedaEmbedding

def BicategoricalYonedaClosed (B : BicategoricalYonedaPackage) : Prop :=
  B.biequivalence ∧ B.yonedaEmbedding

theorem bicategorical_yoneda_closed
    (B : BicategoricalYonedaPackage) (E : BicategoricalYonedaEvidence B) :
    BicategoricalYonedaClosed B :=
  And.intro E.biequivalenceClosed E.yonedaEmbeddingClosed

end CategoryTheoryBicategoriesLemmaCanonicalLaneLean
end HautevilleHouse