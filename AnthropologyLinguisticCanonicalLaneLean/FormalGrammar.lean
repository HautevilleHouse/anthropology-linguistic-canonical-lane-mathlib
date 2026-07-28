import AnthropologyLinguisticCanonicalLaneLean.LinguisticsObjects

namespace HautevilleHouse
namespace AnthropologyLinguisticCanonicalLaneLean

structure FormalGrammarPackage where
  nonterminals : Type
  terminals : Type
  productions : List (List (Sum nonterminals terminals) × List (Sum nonterminals terminals))
  startSymbol : nonterminals
  generativeCapacity : Prop

structure FormalGrammarEvidence (G : FormalGrammarPackage) where
  generativeCapacityClosed : G.generativeCapacity

def FormalGrammarClosed (G : FormalGrammarPackage) : Prop :=
  G.generativeCapacity

theorem formal_grammar_closed_from_evidence (G : FormalGrammarPackage)
    (E : FormalGrammarEvidence G) : FormalGrammarClosed G := by
  exact E.generativeCapacityClosed

end AnthropologyLinguisticCanonicalLaneLean
end HautevilleHouse