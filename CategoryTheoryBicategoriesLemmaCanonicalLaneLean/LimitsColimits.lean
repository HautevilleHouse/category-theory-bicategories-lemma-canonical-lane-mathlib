import HautevilleHouse.CategoryTheoryBicategoriesLemmaCanonicalLaneLean.MathlibObjects
import Mathlib.CategoryTheory.Limits.Shapes.Terminal

/-!
# Limits and Colimits Package
-/

namespace HautevilleHouse
namespace CategoryTheoryBicategoriesLemmaCanonicalLaneLean

structure LimitsPackage (C : Category) where
  hasLimits : Prop
  limitExists : (J : Type) → [Category J] → (J ⥤ C) → Prop
  limitUniversal : Prop

structure ColimitsPackage (C : Category) where
  hasColimits : Prop
  colimitExists : (J : Type) → [Category J] → (J ⥤ C) → Prop
  colimitUniversal : Prop

structure LimitsColimitsEvidence {C : Category} (L : LimitsPackage C) (Col : ColimitsPackage C) where
  hasLimitsClosed : L.hasLimits
  hasColimitsClosed : Col.hasColimits
  limitUniversalClosed : L.limitUniversal
  colimitUniversalClosed : Col.colimitUniversal

def LimitsColimitsClosed {C : Category} (L : LimitsPackage C) (Col : ColimitsPackage C) : Prop :=
  L.hasLimits ∧ Col.hasColimits ∧ L.limitUniversal ∧ Col.colimitUniversal

theorem limits_colimits_closed_from_evidence {C : Category}
    (L : LimitsPackage C) (Col : ColimitsPackage C)
    (E : LimitsColimitsEvidence L Col) : LimitsColimitsClosed L Col := by
  exact And.intro E.hasLimitsClosed
    (And.intro E.hasColimitsClosed
      (And.intro E.limitUniversalClosed E.colimitUniversalClosed))

end CategoryTheoryBicategoriesLemmaCanonicalLaneLean
end HautevilleHouse