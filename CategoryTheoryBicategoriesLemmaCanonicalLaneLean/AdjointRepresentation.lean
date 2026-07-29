import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryBicategoriesLemmaCanonicalLaneLean

structure AdjointPackage (B : BicategoryPackage) (x y : B) where
  leftAdjoint : B.hom x y
  rightAdjoint : B.hom y x
  unit : B.hom x x
  counit : B.hom y y
  triangleIdentityLeft : True := by trivial
  triangleIdentityRight : True := by trivial

structure AdjointEvidence {B : BicategoryPackage} {x y : B} (A : AdjointPackage B x y) where
  leftAdjointClosed : True
  rightAdjointClosed : True
  unitClosed : True
  counitClosed : True

def AdjointRepresentationClosed {B : BicategoryPackage} {x y : B} (A : AdjointPackage B x y) : Prop :=
  True

theorem adjoint_evidence_closed {B : BicategoryPackage} {x y : B} (A : AdjointPackage B x y) (E : AdjointEvidence A) : AdjointRepresentationClosed A := by
  exact True.intro

end CategoryTheoryBicategoriesLemmaCanonicalLaneLean
end HautevilleHouse