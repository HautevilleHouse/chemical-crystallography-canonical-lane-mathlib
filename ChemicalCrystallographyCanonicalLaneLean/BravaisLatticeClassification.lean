import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalCrystallographyCanonicalLaneLean

structure BravaisLatticePackage where
  primitive : Prop
  baseCentered : Prop
  bodyCentered : Prop
  faceCentered : Prop
  rhombohedral : Prop

structure BravaisLatticeEvidence (B : BravaisLatticePackage) where
  primitiveClosed : B.primitive
  baseCenteredClosed : B.baseCentered
  bodyCenteredClosed : B.bodyCentered
  faceCenteredClosed : B.faceCentered
  rhombohedralClosed : B.rhombohedral

def BravaisLatticeClosed (B : BravaisLatticePackage) : Prop :=
  B.primitive ∧ B.baseCentered ∧ B.bodyCentered ∧ B.faceCentered ∧ B.rhombohedral

theorem bravais_lattice_closed_from_evidence (B : BravaisLatticePackage)
    (E : BravaisLatticeEvidence B) : BravaisLatticeClosed B := by
  exact And.intro E.primitiveClosed
    (And.intro E.baseCenteredClosed
      (And.intro E.bodyCenteredClosed
        (And.intro E.faceCenteredClosed E.rhombohedralClosed)))

end ChemicalCrystallographyCanonicalLaneLean
end HautevilleHouse