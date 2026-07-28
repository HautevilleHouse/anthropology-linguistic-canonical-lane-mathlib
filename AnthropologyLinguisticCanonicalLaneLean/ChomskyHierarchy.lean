import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyLinguisticCanonicalLaneLean

structure ChomskyHierarchyPackage where
  regularLanguages : Prop
  contextFreeLanguages : Prop
  contextSensitiveLanguages : Prop
  recursivelyEnumerableLanguages : Prop
  inclusionRegularInContextFree : regularLanguages → contextFreeLanguages
  inclusionContextFreeInContextSensitive : contextFreeLanguages → contextSensitiveLanguages
  inclusionContextSensitiveInRecursivelyEnumerable : contextSensitiveLanguages → recursivelyEnumerableLanguages

structure ChomskyHierarchyEvidence (C : ChomskyHierarchyPackage) where
  regularLanguagesClosed : C.regularLanguages
  contextFreeLanguagesClosed : C.contextFreeLanguages
  contextSensitiveLanguagesClosed : C.contextSensitiveLanguages
  recursivelyEnumerableLanguagesClosed : C.recursivelyEnumerableLanguages
  inclusionsClosed : C.inclusionRegularInContextFree C.regularLanguagesClosed ∧
                     C.inclusionContextFreeInContextSensitive C.contextFreeLanguagesClosed ∧
                     C.inclusionContextSensitiveInRecursivelyEnumerable C.contextSensitiveLanguagesClosed

def ChomskyHierarchyClosed (C : ChomskyHierarchyPackage) : Prop :=
  C.regularLanguages ∧ C.contextFreeLanguages ∧ C.contextSensitiveLanguages ∧ C.recursivelyEnumerableLanguages

theorem chomsky_hierarchy_closed_from_evidence (C : ChomskyHierarchyPackage) (E : ChomskyHierarchyEvidence C) :
    ChomskyHierarchyClosed C := by
  exact And.intro E.regularLanguagesClosed
    (And.intro E.contextFreeLanguagesClosed
      (And.intro E.contextSensitiveLanguagesClosed E.recursivelyEnumerableLanguagesClosed))

end AnthropologyLinguisticCanonicalLaneLean
end HautevilleHouse