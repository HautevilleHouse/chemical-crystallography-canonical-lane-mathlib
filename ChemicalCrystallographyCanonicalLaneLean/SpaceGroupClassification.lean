import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalCrystallographyCanonicalLaneLean

structure SpaceGroupPackage where
  bravaisLattice : Type u
  pointGroup : Type v
  spaceGroup : Type w
  latticeSystem : Prop
  centeringType : Prop
  symmetryOperations : Prop

structure SpaceGroupEvidence (S : SpaceGroupPackage) where
  latticeSystemClosed : S.latticeSystem
  centeringTypeClosed : S.centeringType
  symmetryOperationsClosed : S.symmetryOperations

def SpaceGroupClosed (S : SpaceGroupPackage) : Prop :=
  S.latticeSystem ∧ S.centeringType ∧ S.symmetryOperations

theorem space_group_closed_from_evidence (S : SpaceGroupPackage) (E : SpaceGroupEvidence S) :
    SpaceGroupClosed S := by
  exact And.intro E.latticeSystemClosed (And.intro E.centeringTypeClosed E.symmetryOperationsClosed)

end ChemicalCrystallographyCanonicalLaneLean
end HautevilleHouse