import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryBicategoriesLemmaCanonicalLaneLean

structure BicategoriesAdmittedObject where
  proof : Prop
  conclusion : proof

def BicategoryWitnessClosed (O : BicategoriesAdmittedObject) : Prop :=
  O.proof

end CategoryTheoryBicategoriesLemmaCanonicalLaneLean
end HautevilleHouse