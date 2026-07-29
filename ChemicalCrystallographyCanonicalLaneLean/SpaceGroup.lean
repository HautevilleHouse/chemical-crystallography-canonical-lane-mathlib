import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalCrystallographyCanonicalLaneLean

structure SpaceGroup where
  number : Nat
  internationalSymbol : String
  crystalSystem : String
  pointGroup : String
  centeringType : String

structure SpaceGroupEvidence (S : SpaceGroup) where
  numberInRange : 1 ≤ S.number ∧ S.number ≤ 230
  symbolNotEmpty : S.internationalSymbol ≠ ""
  crystalSystemClassified : S.crystalSystem ∈ {"triclinic", "monoclinic", "orthorhombic", "tetragonal", "rhombohedral", "hexagonal", "cubic"}
  pointGroupNotEmpty : S.pointGroup ≠ ""
  centeringTypeValid : S.centeringType ∈ {"P", "A", "B", "C", "I", "F", "R"}

def SpaceGroupClosed (S : SpaceGroup) : Prop :=
  (1 ≤ S.number ∧ S.number ≤ 230) ∧ S.internationalSymbol ≠ "" ∧
  S.crystalSystem ∈ {"triclinic", "monoclinic", "orthorhombic", "tetragonal", "rhombohedral", "hexagonal", "cubic"} ∧
  S.pointGroup ≠ "" ∧ S.centeringType ∈ {"P", "A", "B", "C", "I", "F", "R"}

theorem space_group_closed_from_evidence (S : SpaceGroup) (E : SpaceGroupEvidence S) : SpaceGroupClosed S := by
  exact And.intro E.numberInRange (And.intro E.symbolNotEmpty (And.intro E.crystalSystemClassified (And.intro E.pointGroupNotEmpty E.centeringTypeValid)))

end ChemicalCrystallographyCanonicalLaneLean
end HautevilleHouse