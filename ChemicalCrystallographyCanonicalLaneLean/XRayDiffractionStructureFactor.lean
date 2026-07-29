import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalCrystallographyCanonicalLaneLean

structure StructureFactorPackage where
  atomicFormFactor : Prop
  structureFactorEquation : Prop
  braggsLaw : Prop
  systematicAbsences : Prop
  intensityCalculation : Prop

structure StructureFactorEvidence (S : StructureFactorPackage) where
  atomicFormFactorClosed : S.atomicFormFactor
  structureFactorEquationClosed : S.structureFactorEquation
  braggsLawClosed : S.braggsLaw
  systematicAbsencesClosed : S.systematicAbsences
  intensityCalculationClosed : S.intensityCalculation

def StructureFactorClosed (S : StructureFactorPackage) : Prop :=
  S.atomicFormFactor ∧ S.structureFactorEquation ∧
  S.braggsLaw ∧ S.systematicAbsences ∧ S.intensityCalculation

theorem structure_factor_closed_from_evidence (S : StructureFactorPackage)
    (E : StructureFactorEvidence S) : StructureFactorClosed S := by
  exact And.intro E.atomicFormFactorClosed
    (And.intro E.structureFactorEquationClosed
      (And.intro E.braggsLawClosed
        (And.intro E.systematicAbsencesClosed E.intensityCalculationClosed)))

end ChemicalCrystallographyCanonicalLaneLean
end HautevilleHouse