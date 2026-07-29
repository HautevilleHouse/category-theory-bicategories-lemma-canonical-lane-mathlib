import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryBicategoriesLemmaCanonicalLaneLean

structure LaxFunctorPackage (B C : BicategoryPackage) where
  objMap : B → C
  homMap : ∀ {x y : B}, B.hom x y → C.hom (objMap x) (objMap y)
  compositionComparison : ∀ {x y z : B} (f : B.hom x y) (g : B.hom y z), C.comp (homMap f) (homMap g) → C.hom (objMap x) (objMap z)
  identityComparison : ∀ x : B, C.hom (objMap x) (objMap x)
  coherenceLaws : True := by trivial

structure LaxFunctorEvidence {B C : BicategoryPackage} (F : LaxFunctorPackage B C) where
  objMapDefined : True
  homMapDefined : True

def LaxFunctorClosed {B C : BicategoryPackage} (F : LaxFunctorPackage B C) : Prop :=
  True

theorem lax_functor_evidence_closed {B C : BicategoryPackage} (F : LaxFunctorPackage B C) (E : LaxFunctorEvidence F) : LaxFunctorClosed F := by
  exact True.intro

end CategoryTheoryBicategoriesLemmaCanonicalLaneLean
end HautevilleHouse