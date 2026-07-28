import HautevilleHouse.AnthroLinguisticCanonicalLaneLean.GrammaticalHierarchy

/-!
# Syntactic Structures Package
-/

namespace HautevilleHouse
namespace AnthroLinguisticCanonicalLaneLean

structure SyntacticStructuresPackage {L : LinguisticAdmittedObject}
    (G : GrammaticalHierarchyPackage L) where
  phraseStructureRules : Prop
  transformationRules : Prop
  deepStructure : Prop
  surfaceStructure : Prop
  recursiveEmbedding : Prop

structure SyntacticStructuresEvidence {L : LinguisticAdmittedObject}
    {G : GrammaticalHierarchyPackage L} (S : SyntacticStructuresPackage G) where
  phraseStructureRulesClosed : S.phraseStructureRules
  transformationRulesClosed : S.transformationRules
  deepStructureClosed : S.deepStructure
  surfaceStructureClosed : S.surfaceStructure
  recursiveEmbeddingClosed : S.recursiveEmbedding

def SyntacticStructuresClosed {L : LinguisticAdmittedObject}
    {G : GrammaticalHierarchyPackage L} (S : SyntacticStructuresPackage G) : Prop :=
  S.phraseStructureRules ∧ S.transformationRules ∧
  S.deepStructure ∧ S.surfaceStructure ∧ S.recursiveEmbedding

theorem syntactic_structures_closed_from_evidence
    {L : LinguisticAdmittedObject} {G : GrammaticalHierarchyPackage L}
    (S : SyntacticStructuresPackage G) (E : SyntacticStructuresEvidence S) :
    SyntacticStructuresClosed S := by
  exact And.intro E.phraseStructureRulesClosed
    (And.intro E.transformationRulesClosed
      (And.intro E.deepStructureClosed
        (And.intro E.surfaceStructureClosed E.recursiveEmbeddingClosed)))

end AnthroLinguisticCanonicalLaneLean
end HautevilleHouse