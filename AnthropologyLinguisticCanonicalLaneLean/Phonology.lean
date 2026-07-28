import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyLinguisticCanonicalLaneLean

structure PhonologyPackage where
  phonemeInventory : Prop
  distinctiveFeatures : Prop
  phonologicalRules : Prop
  syllableStructure : Prop
  prosodicHierarchy : Prop

structure PhonologyEvidence (P : PhonologyPackage) where
  phonemeInventoryClosed : P.phonemeInventory
  distinctiveFeaturesClosed : P.distinctiveFeatures
  phonologicalRulesClosed : P.phonologicalRules
  syllableStructureClosed : P.syllableStructure
  prosodicHierarchyClosed : P.prosodicHierarchy

def PhonologyClosed (P : PhonologyPackage) : Prop :=
  P.phonemeInventory ∧ P.distinctiveFeatures ∧ P.phonologicalRules ∧ P.syllableStructure ∧ P.prosodicHierarchy

theorem phonology_closed_from_evidence (P : PhonologyPackage) (E : PhonologyEvidence P) :
    PhonologyClosed P := by
  exact And.intro E.phonemeInventoryClosed
    (And.intro E.distinctiveFeaturesClosed
      (And.intro E.phonologicalRulesClosed
        (And.intro E.syllableStructureClosed E.prosodicHierarchyClosed)))

end AnthropologyLinguisticCanonicalLaneLean
end HautevilleHouse