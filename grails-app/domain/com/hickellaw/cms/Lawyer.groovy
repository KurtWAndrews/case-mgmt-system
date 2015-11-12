package com.hickellaw.cms

class Lawyer extends Employee {
  BigDecimal billingRate

  static constraints = {}

  Set<Specialty> getSpecialties() {
    LawyerSpecialty.findAllByLawyer(this).collect {it.specialty} as Set
  }

  boolean hasSpecialty(Specialty specialty) {
    LawyerSpecialty.countByLawyerAndSpecialty(this, specialty) > 0
  }
}
