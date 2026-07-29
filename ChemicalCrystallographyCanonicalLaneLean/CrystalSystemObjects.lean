import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalCrystallographyCanonicalLaneLean

structure CrystalSystem where
  carrier : Type
  topology : TopologicalSpace carrier
  latticeTranslationGroup : carrier ≃ carrier
  pointGroup : carrier ≃ carrier
  spaceGroup : carrier ≃ carrier

structure CrystalAdmittedObject where
  crystal : CrystalSystem
  unitCellDefined : Prop
  diffractionPattern : Prop
  bravaisLatticeClassified : Prop
  conclusion : unitCellDefined ∧ diffractionPattern ∧ bravaisLatticeClassified

structure CrystallographyEndgameState where
  object : CrystalAdmittedObject

def CrystallographyWitnessClosed (O : CrystalAdmittedObject) : Prop :=
  O.conclusion

end ChemicalCrystallographyCanonicalLaneLean
end HautevilleHouse