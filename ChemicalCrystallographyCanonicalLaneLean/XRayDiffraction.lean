import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalCrystallographyCanonicalLaneLean

structure XRayDiffractionPackage where
  crystalStructure : Type u
  scatteringFactor : Type v
  structureFactor : Type w
  braggCondition : Prop
  intensityFormula : Prop
  phaseProblem : Prop

structure XRayDiffractionEvidence (X : XRayDiffractionPackage) where
  braggConditionClosed : X.braggCondition
  intensityFormulaClosed : X.intensityFormula
  phaseProblemClosed : X.phaseProblem

def XRayDiffractionClosed (X : XRayDiffractionPackage) : Prop :=
  X.braggCondition ∧ X.intensityFormula ∧ X.phaseProblem

theorem xray_diffraction_closed_from_evidence (X : XRayDiffractionPackage) (E : XRayDiffractionEvidence X) :
    XRayDiffractionClosed X := by
  exact And.intro E.braggConditionClosed (And.intro E.intensityFormulaClosed E.phaseProblemClosed)

end ChemicalCrystallographyCanonicalLaneLean
end HautevilleHouse