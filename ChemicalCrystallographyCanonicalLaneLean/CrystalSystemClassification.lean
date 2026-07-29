import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalCrystallographyCanonicalLaneLean

structure CrystalSystemPackage where
  triclinic : Prop
  monoclinic : Prop
  orthorhombic : Prop
  tetragonal : Prop
  trigonal : Prop
  hexagonal : Prop
  cubic : Prop

structure CrystalSystemEvidence (C : CrystalSystemPackage) where
  triclinicClosed : C.triclinic
  monoclinicClosed : C.monoclinic
  orthorhombicClosed : C.orthorhombic
  tetragonalClosed : C.tetragonal
  trigonalClosed : C.trigonal
  hexagonalClosed : C.hexagonal
  cubicClosed : C.cubic

def CrystalSystemClosed (C : CrystalSystemPackage) : Prop :=
  C.triclinic ∧ C.monoclinic ∧ C.orthorhombic ∧
  C.tetragonal ∧ C.trigonal ∧ C.hexagonal ∧ C.cubic

theorem crystal_system_closed_from_evidence (C : CrystalSystemPackage)
    (E : CrystalSystemEvidence C) : CrystalSystemClosed C := by
  exact And.intro E.triclinicClosed
    (And.intro E.monoclinicClosed
      (And.intro E.orthorhombicClosed
        (And.intro E.tetragonalClosed
          (And.intro E.trigonalClosed
            (And.intro E.hexagonalClosed E.cubicClosed)))))

end ChemicalCrystallographyCanonicalLaneLean
end HautevilleHouse