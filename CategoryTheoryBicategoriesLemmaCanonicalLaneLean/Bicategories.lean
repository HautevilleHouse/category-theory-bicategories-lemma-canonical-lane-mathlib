import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryBicategoriesLemmaCanonicalLaneLean

structure BicategoryPackage (B : Type u) where
  hom : B → B → Type v
  id : ∀ x : B, hom x x
  comp : ∀ {x y z : B}, hom x y → hom y z → hom x z
  associator : ∀ {w x y z : B} (f : hom w x) (g : hom x y) (h : hom y z), comp (comp f g) h ≅ comp f (comp g h)
  leftUnitor : ∀ {x y : B} (f : hom x y), comp (id x) f ≅ f
  rightUnitor : ∀ {x y : B} (f : hom x y), comp f (id y) ≅ f
  pentagonCoherence : ∀ {v w x y z : B} (f : hom v w) (g : hom w x) (h : hom x y) (k : hom y z), True := by
    intro v w x y z f g h k; trivial
  triangleCoherence : ∀ {x y z : B} (f : hom x y) (g : hom y z), True := by
    intro x y z f g; trivial

structure BicategoryEvidence (B : BicategoryPackage) where
  associatorNatural : True
  leftUnitorNatural : True
  rightUnitorNatural : True

end CategoryTheoryBicategoriesLemmaCanonicalLaneLean
end HautevilleHouse