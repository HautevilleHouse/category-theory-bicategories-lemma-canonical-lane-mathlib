import HautevilleHouse.CategoryTheoryBicategoriesLemmaCanonicalLaneLean.MathlibObjects
import Mathlib.CategoryTheory.Adjunction.Basic

/-!
# Adjoint Functor Package
-/

namespace HautevilleHouse
namespace CategoryTheoryBicategoriesLemmaCanonicalLaneLean

structure AdjointFunctorPackage (C D : Category) where
  leftAdjoint : C ⥤ D
  rightAdjoint : D ⥤ C
  unitCounit : Prop
  triangleIdentities : Prop

structure AdjointFunctorEvidence {C D : Category} (A : AdjointFunctorPackage C D) where
  unitCounitClosed : A.unitCounit
  triangleIdentitiesClosed : A.triangleIdentities

def AdjointFunctorClosed {C D : Category} (A : AdjointFunctorPackage C D) : Prop :=
  A.unitCounit ∧ A.triangleIdentities

theorem adjoint_functor_closed_from_evidence {C D : Category}
    (A : AdjointFunctorPackage C D) (E : AdjointFunctorEvidence A) :
    AdjointFunctorClosed A := by
  exact And.intro E.unitCounitClosed E.triangleIdentitiesClosed

end CategoryTheoryBicategoriesLemmaCanonicalLaneLean
end HautevilleHouse