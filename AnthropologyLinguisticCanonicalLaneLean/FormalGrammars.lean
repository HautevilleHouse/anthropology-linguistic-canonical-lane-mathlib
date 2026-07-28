import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyLinguisticCanonicalLaneLean

structure FormalGrammarPackage where
  phraseStructureGrammar : Prop
  transformationalGrammar : Prop
  generativeCapacity : Prop
  universalGrammarHypothesis : Prop

structure FormalGrammarEvidence (F : FormalGrammarPackage) where
  phraseStructureGrammarClosed : F.phraseStructureGrammar
  transformationalGrammarClosed : F.transformationalGrammar
  generativeCapacityClosed : F.generativeCapacity
  universalGrammarHypothesisClosed : F.universalGrammarHypothesis

def FormalGrammarClosed (F : FormalGrammarPackage) : Prop :=
  F.phraseStructureGrammar ∧ F.transformationalGrammar ∧ F.generativeCapacity ∧ F.universalGrammarHypothesis

theorem formal_grammar_closed_from_evidence (F : FormalGrammarPackage) (E : FormalGrammarEvidence F) :
    FormalGrammarClosed F := by
  exact And.intro E.phraseStructureGrammarClosed
    (And.intro E.transformationalGrammarClosed
      (And.intro E.generativeCapacityClosed E.universalGrammarHypothesisClosed))

end AnthropologyLinguisticCanonicalLaneLean
end HautevilleHouse