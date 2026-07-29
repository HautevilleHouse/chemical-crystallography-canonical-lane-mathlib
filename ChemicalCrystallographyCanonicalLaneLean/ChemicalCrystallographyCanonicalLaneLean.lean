import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalCrystallographyCanonicalLaneLean

structure CrystallographyAdmittedObject where
  spaceGroup : Type
  unitCell : Type
  bravaisLatticeClassified : Prop
  diffractionPatternRecorded : Prop
  conclusion : bravaisLatticeClassified

end ChemicalCrystallographyCanonicalLaneLean
end HautevilleHouse