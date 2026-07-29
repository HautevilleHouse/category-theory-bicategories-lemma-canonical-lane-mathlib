import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryBicategoriesLemmaCanonicalLaneLean

structure YonedaLemmaPackage where
  category : Type u
  functor : Type v
  naturality : Prop
  representation : Prop

def YonedaLemmaClosed (Y : YonedaLemmaPackage) : Prop :=
  Y.naturality ∧ Y.representation

theorem yoneda_lemma_closed (Y : YonedaLemmaPackage) (hnat : Y.naturality) (hrep : Y.representation) :
    YonedaLemmaClosed Y :=
  And.intro hnat hrep

end CategoryTheoryBicategoriesLemmaCanonicalLaneLean
end HautevilleHouse