import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryBicategoriesLemmaCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.CategoryTheoryBicategoriesLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CategoryTheoryBicategoriesLemmaCanonicalLaneLean

def ConstrainedBicategoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bicategory_endgame (A : AdmissibleClass) :
    ConstrainedBicategoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoryTheoryBicategoriesLemmaCanonicalLaneLean
end HautevilleHouse