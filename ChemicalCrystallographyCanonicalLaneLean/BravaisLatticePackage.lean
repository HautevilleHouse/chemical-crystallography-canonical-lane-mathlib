import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalCrystallographyCanonicalLaneLean

structure BravaisLatticePackage where
  latticeType : Type u
  centering : Type v
  latticeParameters : Prop
  symmetryConstraints : Prop
  unitCellVolume : Prop

structure BravaisLatticeEvidence (B : BravaisLatticePackage) where
  latticeParametersClosed : B.latticeParameters
  symmetryConstraintsClosed : B.symmetryConstraints
  unitCellVolumeClosed : B.unitCellVolume

def BravaisLatticeClosed (B : BravaisLatticePackage) : Prop :=
  B.latticeParameters ∧ B.symmetryConstraints ∧ B.unitCellVolume

theorem bravais_lattice_closed_from_evidence (B : BravaisLatticePackage) (E : BravaisLatticeEvidence B) :
    BravaisLatticeClosed B := by
  exact And.intro E.latticeParametersClosed (And.intro E.symmetryConstraintsClosed E.unitCellVolumeClosed)

end ChemicalCrystallographyCanonicalLaneLean
end HautevilleHouse