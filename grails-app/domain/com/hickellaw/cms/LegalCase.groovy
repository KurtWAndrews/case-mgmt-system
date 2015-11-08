package com.hickellaw.cms

class LegalCase {
  String description
  Client client
  Lawyer primaryLawyer
  Date beginDte
  Date endDte
  Date closeDte
  BigDecimal totalCost

  static belongsTo = [client:Client, primaryLawyer: Lawyer]
  static hasMany = [employees:Employee, logEntries:DailyLogEntry]
  static constraints = {}
}
