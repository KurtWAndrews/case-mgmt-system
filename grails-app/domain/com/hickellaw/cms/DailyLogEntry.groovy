package com.hickellaw.cms

class DailyLogEntry {
  Employee employee
  LegalCase LegalCase
  Date logDte
  BigDecimal hoursBilled

  static belongsTo = [employee:Employee, LegalCase:LegalCase]
  static constraints = {}
}
