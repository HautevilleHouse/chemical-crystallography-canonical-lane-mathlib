import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalCrystallographyCanonicalLaneLean

structure QuasicrystalPackage where
  aperiodicOrder : Prop
  penroseTiling : Prop
  diffractionPattern : Prop
  higherDimensionalEmbedding : Prop
  cutAndProjectMethod : Prop

structure QuasicrystalEvidence (Q : QuasicrystalPackage) where
  aperiodicOrderClosed : Q.aperiodicOrder
  penroseTilingClosed : Q.penroseTiling
  diffractionPatternClosed : Q.diffractionPattern
  higherDimensionalEmbeddingClosed : Q.higherDimensionalEmbedding
  cutAndProjectMethodClosed : Q.cutAndProjectMethod

def QuasicrystalClosed (Q : QuasicrystalPackage) : Prop :=
  Q.apenodicOrder ∧ Q.penroseTiling ∧ Q.diffractionPattern ∧
  Q.higherDimensionalEmbedding ∧ Q.cutAndProjectMethod

theorem quasicrystal_closed_from_evidence (Q : QuasicrystalPackage)
    (E : QuasicrystalEvidence Q) : QuasicrystalClosed Q := by
  exact And.intro E.apenodicOrderClosed
    (And.intro E.penroseTilingClosed
      (And.intro E.diffractionPatternClosed
        (And.intro E.higherDimensionalEmbeddingClosed E.cutAndProjectMethodClosed)))

end ChemicalCrystallographyCanonicalLaneLean
end HautevilleHouse