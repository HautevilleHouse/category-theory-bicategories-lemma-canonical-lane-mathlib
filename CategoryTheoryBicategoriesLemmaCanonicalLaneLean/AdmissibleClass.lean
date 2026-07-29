import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryBicategoriesLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : BicategoriesAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BicategoryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoryTheoryBicategoriesLemmaCanonicalLaneLean
end HautevilleHouse