import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryBicategoriesLemmaCanonicalLaneLean.BicategoryStructure

namespace HautevilleHouse
namespace CategoryTheoryBicategoriesLemmaCanonicalLaneLean

structure BicategoricalAdjointPackage (B : BicategoryPackage) where
  leftAdjunction : Prop
  rightAdjunction : Prop
  unitCounit : Prop
  triangleIdentities : Prop
  leftAdjunctionClosed : leftAdjunction
  rightAdjunctionClosed : rightAdjunction
  unitCounitClosed : unitCounit
  triangleIdentitiesClosed : triangleIdentities

structure BicategoricalAdjointEvidence {B : BicategoryPackage} (A : BicategoricalAdjointPackage B) where
  leftAdjunctionClosed : A.leftAdjunction
  rightAdjunctionClosed : A.rightAdjunction
  unitCounitClosed : A.unitCounit
  triangleIdentitiesClosed : A.triangleIdentities

def BicategoricalAdjointClosed {B : BicategoryPackage} (A : BicategoricalAdjointPackage B) : Prop :=
  A.leftAdjunction ∧ A.rightAdjunction ∧ A.unitCounit ∧ A.triangleIdentities

theorem bicategorical_adjoint_closed_from_evidence {B : BicategoryPackage} (A : BicategoricalAdjointPackage B) (E : BicategoricalAdjointEvidence A) : BicategoricalAdjointClosed A := by
  exact And.intro E.leftAdjunctionClosed (And.intro E.rightAdjunctionClosed (And.intro E.unitCounitClosed E.triangleIdentitiesClosed))

end CategoryTheoryBicategoriesLemmaCanonicalLaneLean
end HautevilleHouse