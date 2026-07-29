import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryBicategoriesLemmaCanonicalLaneLean

structure AdjointFunctorPackage where
  functorLeft : Type u
  functorRight : Type v
  unit : Prop
  counit : Prop
  triangleIdentities : Prop

def AdjointFunctorClosed (A : AdjointFunctorPackage) : Prop :=
  A.unit ∧ A.counit ∧ A.triangleIdentities

theorem adjoint_functor_closed (A : AdjointFunctorPackage)
    (hu : A.unit) (hc : A.counit) (ht : A.triangleIdentities) : AdjointFunctorClosed A :=
  And.intro hu (And.intro hc ht)

end CategoryTheoryBicategoriesLemmaCanonicalLaneLean
end HautevilleHouse