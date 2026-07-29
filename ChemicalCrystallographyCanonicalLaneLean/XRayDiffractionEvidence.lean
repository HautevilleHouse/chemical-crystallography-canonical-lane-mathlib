import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalCrystallographyCanonicalLaneLean

structure XRayDiffractionEvidence where
  incidentBeamWavelength : ℝ
  diffractionAngles : List ℝ
  structureFactors : List ℂ
  braggLawSatisfied : Prop
  intensityPattern : Prop
  braggLawSatisfiedTerm : braggLawSatisfied
  intensityPatternTerm : intensityPattern

def XRayDiffractionClosed (X : XRayDiffractionEvidence) : Prop :=
  X.braggLawSatisfied ∧ X.intensityPattern

theorem xray_diffraction_closed (X : XRayDiffractionEvidence) : XRayDiffractionClosed X := by
  exact And.intro X.braggLawSatisfiedTerm X.intensityPatternTerm

end ChemicalCrystallographyCanonicalLaneLean
end HautevilleHouse