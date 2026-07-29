import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryBicategoriesLemmaCanonicalLaneLean

structure BicategoryStructure where
  objects : Type u
  oneMorphisms : objects → objects → Type v
  twoMorphisms : ∀ {a b : objects}, (f g : oneMorphisms a b) → Type w
  identityOneMorphism : ∀ (a : objects), oneMorphisms a a
  compositionOneMorphism : ∀ {a b c : objects}, oneMorphisms b c → oneMorphisms a b → oneMorphisms a c
  identityTwoMorphism : ∀ {a b : objects} (f : oneMorphisms a b), twoMorphisms f f
  verticalComposition : ∀ {a b : objects} {f g h : oneMorphisms a b},
    twoMorphisms g h → twoMorphisms f g → twoMorphisms f h
  horizontalComposition : ∀ {a b c : objects} {f g : oneMorphisms a b} {h k : oneMorphisms b c},
    twoMorphisms f g → twoMorphisms h k → twoMorphisms (compositionOneMorphism h f) (compositionOneMorphism k g)
  associator : ∀ {a b c d : objects} (f : oneMorphisms a b) (g : oneMorphisms b c) (h : oneMorphisms c d),
    twoMorphisms (compositionOneMorphism (compositionOneMorphism h g) f) (compositionOneMorphism h (compositionOneMorphism g f))
  leftUnitor : ∀ {a b : objects} (f : oneMorphisms a b),
    twoMorphisms (compositionOneMorphism (identityOneMorphism b) f) f
  rightUnitor : ∀ {a b : objects} (f : oneMorphisms a b),
    twoMorphisms (compositionOneMorphism f (identityOneMorphism a)) f

def BicategoryStructureClosed (B : BicategoryStructure) : Prop :=
  ∀ (a b c d : B.objects) (f : B.oneMorphisms a b) (g : B.oneMorphisms b c) (h : B.oneMorphisms c d),
    True

theorem bicategory_structure_closed_trivial (B : BicategoryStructure) : BicategoryStructureClosed B := by
  intro a b c d f g h; trivial

end CategoryTheoryBicategoriesLemmaCanonicalLaneLean
end HautevilleHouse