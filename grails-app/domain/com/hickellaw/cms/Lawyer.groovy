package com.hickellaw.cms

class Lawyer extends Person {
  BigDecimal billingRate
  
  static hasMany = [specialties: Specialty, cases:LegalCase]
  static constraints = {}
}
