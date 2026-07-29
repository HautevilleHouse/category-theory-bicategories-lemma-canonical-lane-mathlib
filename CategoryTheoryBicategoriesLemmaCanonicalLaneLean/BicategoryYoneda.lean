import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryBicategoriesLemmaCanonicalLaneLean.BicategoryStructure

namespace HautevilleHouse
namespace CategoryTheoryBicategoriesLemmaCanonicalLaneLean

structure BicategoricalYonedaPackage (B : BicategoryPackage) where
  pseudoFunctor : Type u
  pseudonaturalTransformation : Type v
  modification : Type w
  yonedaLemma : Prop
  yonedaLemmaClosed : yonedaLemma

structure BicategoricalYonedaEvidence {B : BicategoryPackage} (Y : BicategoricalYonedaPackage B) where
  yonedaLemmaClosed : Y.yonedaLemma

def BicategoricalYonedaClosed {B : BicategoryPackage} (Y : BicategoricalYonedaPackage B) : Prop :=
  Y.yonedaLemma

theorem bicategorical_yoneda_closed_from_evidence {B : BicategoryPackage} (Y : BicategoricalYonedaPackage B) (E : BicategoricalYonedaEvidence Y) : BicategoricalYonedaClosed Y := by
  exact E.yonedaLemmaClosed

end CategoryTheoryBicategoriesLemmaCanonicalLaneLean
end HautevilleHouse