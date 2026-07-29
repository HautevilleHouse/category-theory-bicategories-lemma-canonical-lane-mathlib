import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryBicategoriesLemmaCanonicalLaneLean

structure FunctorPackage (A B : Type u) where
  objMap : A → B
  arrowMap : {x y : A} → (x → y) → (objMap x → objMap y)
  identityPreserved : ∀ x : A, arrowMap (id x) = id (objMap x) := by
    intro x; rfl
  compositionPreserved : ∀ {x y z : A} (f : x → y) (g : y → z), arrowMap (g ∘ f) = (arrowMap g) ∘ (arrowMap f) := by
    intro x y z f g; rfl

structure NaturalTransformationPackage {A B : Type u} (F G : FunctorPackage A B) where
  component : ∀ x : A, F.objMap x → G.objMap x
  naturality : ∀ {x y : A} (f : x → y), component y ∘ F.arrowMap f = G.arrowMap f ∘ component x := by
    intro x y f; rfl

structure FunctorNaturalTransformationEvidence {A B : Type u} (F G : FunctorPackage A B) (η : NaturalTransformationPackage F G) where
  componentDefined : True
  naturalityClosed : η.naturality

end CategoryTheoryBicategoriesLemmaCanonicalLaneLean
end HautevilleHouse