import HautevilleHouse.AnthroLinguisticCanonicalLaneLean.LinguisticObjects

/-!
# Grammatical Hierarchy Package
-/

namespace HautevilleHouse
namespace AnthroLinguisticCanonicalLaneLean

structure GrammaticalHierarchyPackage (L : LinguisticAdmittedObject) where
  type0Grammar : Prop
  type1Grammar : Prop
  type2Grammar : Prop
  type3Grammar : Prop
  hierarchyInclusion : type3Grammar → type2Grammar
  hierarchyInclusion2 : type2Grammar → type1Grammar
  hierarchyInclusion3 : type1Grammar → type0Grammar

structure GrammaticalHierarchyEvidence (L : LinguisticAdmittedObject)
    (G : GrammaticalHierarchyPackage L) where
  type0GrammarClosed : G.type0Grammar
  type1GrammarClosed : G.type1Grammar
  type2GrammarClosed : G.type2Grammar
  type3GrammarClosed : G.type3Grammar

def GrammaticalHierarchyClosed (L : LinguisticAdmittedObject)
    (G : GrammaticalHierarchyPackage L) : Prop :=
  G.type0Grammar ∧ G.type1Grammar ∧ G.type2Grammar ∧ G.type3Grammar

theorem grammatical_hierarchy_closed_from_evidence
    (L : LinguisticAdmittedObject) (G : GrammaticalHierarchyPackage L)
    (E : GrammaticalHierarchyEvidence L G) : GrammaticalHierarchyClosed L G := by
  exact And.intro E.type0GrammarClosed
    (And.intro E.type1GrammarClosed
      (And.intro E.type2GrammarClosed E.type3GrammarClosed))

end AnthroLinguisticCanonicalLaneLean
end HautevilleHouse