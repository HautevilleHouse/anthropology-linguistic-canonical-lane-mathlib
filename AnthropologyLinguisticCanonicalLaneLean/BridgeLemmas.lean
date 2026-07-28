import HautevilleHouse.AnthroLinguisticCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthroLinguisticCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LinguisticWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AnthroLinguisticCanonicalLaneLean
end HautevilleHouse