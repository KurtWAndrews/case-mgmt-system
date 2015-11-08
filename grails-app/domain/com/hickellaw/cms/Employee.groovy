package com.hickellaw.cms

class Employee extends Person {
  BigDecimal salary

  static belongsTo = LegalCase
  static hasMany = [cases:LegalCase, logEntries:DailyLogEntry, appointments:Appointment]
  static constraints = {}
}
