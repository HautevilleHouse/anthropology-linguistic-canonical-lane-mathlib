import HautevilleHouse.AnthroLinguisticCanonicalLaneLean.SyntacticStructures

/-!
# Phonological Feature Package
-/

namespace HautevilleHouse
namespace AnthroLinguisticCanonicalLaneLean

structure PhonologicalFeaturePackage {L : LinguisticAdmittedObject}
    {G : GrammaticalHierarchyPackage L} {S : SyntacticStructuresPackage G} where
  featureGeometry : Prop
  ruleOrdering : Prop
  underspecification : Prop
  constraintRanking : Prop

structure PhonologicalFeatureEvidence {L : LinguisticAdmittedObject}
    {G : GrammaticalHierarchyPackage L} {S : SyntacticStructuresPackage G}
    (P : PhonologicalFeaturePackage S) where
  featureGeometryClosed : P.featureGeometry
  ruleOrderingClosed : P.ruleOrdering
  underspecificationClosed : P.underspecification
  constraintRankingClosed : P.constraintRanking

def PhonologicalFeatureClosed {L : LinguisticAdmittedObject}
    {G : GrammaticalHierarchyPackage L} {S : SyntacticStructuresPackage G}
    (P : PhonologicalFeaturePackage S) : Prop :=
  P.featureGeometry ∧ P.ruleOrdering ∧ P.underspecification ∧ P.constraintRanking

theorem phonological_feature_closed_from_evidence
    {L : LinguisticAdmittedObject} {G : GrammaticalHierarchyPackage L}
    {S : SyntacticStructuresPackage G} (P : PhonologicalFeaturePackage S)
    (E : PhonologicalFeatureEvidence P) : PhonologicalFeatureClosed P := by
  exact And.intro E.featureGeometryClosed
    (And.intro E.ruleOrderingClosed
      (And.intro E.underspecificationClosed E.constraintRankingClosed))

end AnthroLinguisticCanonicalLaneLean
end HautevilleHouse