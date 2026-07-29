import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalCrystallographyCanonicalLaneLean

structure Quasicrystal where
  composition : String
  tilingDimension : Nat
  embeddingDimension : Nat
  symmetryGroup : String
  diffractionPattern : XRayDiffractionPattern

structure QuasicrystalEvidence (Q : Quasicrystal) where
  compositionDefined : Q.composition ≠ ""
  tilingDimensionAtLeast2 : Q.tilingDimension ≥ 2
  embeddingDimensionExceedsTiling : Q.embeddingDimension ≥ Q.tilingDimension
  symmetryGroupNotEmpty : Q.symmetryGroup ≠ ""
  diffractionPatternValid : XRayDiffractionClosed Q.diffractionPattern

def QuasicrystalClosed (Q : Quasicrystal) : Prop :=
  Q.composition ≠ "" ∧ Q.tilingDimension ≥ 2 ∧ Q.embeddingDimension ≥ Q.tilingDimension ∧
  Q.symmetryGroup ≠ "" ∧ XRayDiffractionClosed Q.diffractionPattern

theorem quasicrystal_closed_from_evidence (Q : Quasicrystal) (E : QuasicrystalEvidence Q) : QuasicrystalClosed Q := by
  exact And.intro E.compositionDefined (And.intro E.tilingDimensionAtLeast2 (And.intro E.embeddingDimensionExceedsTiling (And.intro E.symmetryGroupNotEmpty E.diffractionPatternValid)))

end ChemicalCrystallographyCanonicalLaneLean
end HautevilleHouse