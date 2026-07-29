import HautevilleHouse.CategoryTheoryBicategoriesLemmaCanonicalLaneLean.TheoremStatement
import Mathlib.CategoryTheory.Bicategory.Basic

namespace HautevilleHouse
namespace CategoryTheoryBicategoriesLemmaCanonicalLaneLean

structure CategorySpace where
  carrier : Type
  category : Category carrier

structure CategoryAdmittedObject where
  space : CategorySpace
  bicategoryStructure : Bicategory (CategorySpace.category space)
  coherenceTheorem : Prop
  witness : coherenceTheorem

structure BicategoryEndgameState where
  object : CategoryAdmittedObject

def BicategoryWitnessClosed (O : CategoryAdmittedObject) : Prop :=
  O.coherenceTheorem

end CategoryTheoryBicategoriesLemmaCanonicalLaneLean
end HautevilleHouse