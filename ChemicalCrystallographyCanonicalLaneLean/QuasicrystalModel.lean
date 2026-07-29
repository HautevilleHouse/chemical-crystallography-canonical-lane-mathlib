import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalCrystallographyCanonicalLaneLean

structure QuasicrystalModelPackage where
  higherDimensionalLattice : Type u
  cutAndProjectMethod : Type v
  aperiodicOrder : Prop
  diffractionPattern : Prop
  tilingRules : Prop

structure QuasicrystalModelEvidence (Q : QuasicrystalModelPackage) where
  aperiodicOrderClosed : Q.aperiodicOrder
  diffractionPatternClosed : Q.diffractionPattern
  tilingRulesClosed : Q.tilingRules

def QuasicrystalModelClosed (Q : QuasicrystalModelPackage) : Prop :=
  Q.aperiodicOrder ∧ Q.diffractionPattern ∧ Q.tilingRules

theorem quasicrystal_model_closed_from_evidence (Q : QuasicrystalModelPackage) (E : QuasicrystalModelEvidence Q) :
    QuasicrystalModelClosed Q := by
  exact And.intro E.aperiodicOrderClosed (And.intro E.diffractionPatternClosed E.tilingRulesClosed)

end ChemicalCrystallographyCanonicalLaneLean
end HautevilleHouse