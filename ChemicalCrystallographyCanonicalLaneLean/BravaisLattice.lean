import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalCrystallographyCanonicalLaneLean

structure BravaisLattice where
  latticeSystem : String
  latticeSymbol : String
  conventionalCell : String
  centeringType : String

structure BravaisLatticeEvidence (B : BravaisLattice) where
  latticeSystemClassified : B.latticeSystem ∈ {"triclinic", "monoclinic", "orthorhombic", "tetragonal", "rhombohedral", "hexagonal", "cubic"}
  latticeSymbolRecognized : B.latticeSymbol ≠ ""
  conventionalCellDefined : B.conventionalCell ≠ ""
  centeringTypeValid : B.centeringType ∈ {"P", "A", "B", "C", "I", "F", "R"}

def BravaisLatticeClosed (B : BravaisLattice) : Prop :=
  B.latticeSystem ∈ {"triclinic", "monoclinic", "orthorhombic", "tetragonal", "rhombohedral", "hexagonal", "cubic"} ∧
  B.latticeSymbol ≠ "" ∧ B.conventionalCell ≠ "" ∧ B.centeringType ∈ {"P", "A", "B", "C", "I", "F", "R"}

theorem bravais_lattice_closed_from_evidence (B : BravaisLattice) (E : BravaisLatticeEvidence B) : BravaisLatticeClosed B := by
  exact And.intro E.latticeSystemClassified (And.intro E.latticeSymbolRecognized (And.intro E.conventionalCellDefined E.centeringTypeValid))

end ChemicalCrystallographyCanonicalLaneLean
end HautevilleHouse