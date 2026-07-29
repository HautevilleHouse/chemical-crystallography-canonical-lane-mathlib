import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalCrystallographyCanonicalLaneLean

structure CrystalSystem where
  latticeType : String
  centering : String
  symmetryGroup : String
  unitCellDimensions : Nat

structure CrystalSystemEvidence (C : CrystalSystem) where
  latticeTypeDefined : C.latticeType ≠ ""
  centeringDefined : C.centering ≠ ""
  symmetryGroupDefined : C.symmetryGroup ≠ ""
  unitCellDimensionsPositive : C.unitCellDimensions > 0

def CrystalSystemClosed (C : CrystalSystem) : Prop :=
  C.latticeType ≠ "" ∧ C.centering ≠ "" ∧ C.symmetryGroup ≠ "" ∧ C.unitCellDimensions > 0

theorem crystal_system_closed_from_evidence (C : CrystalSystem) (E : CrystalSystemEvidence C) : CrystalSystemClosed C := by
  exact And.intro E.latticeTypeDefined (And.intro E.centeringDefined (And.intro E.symmetryGroupDefined E.unitCellDimensionsPositive))

end ChemicalCrystallographyCanonicalLaneLean
end HautevilleHouse