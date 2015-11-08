package com.hickellaw.cms

class Firm extends BusinessEntity {
  String FirmName
  BigDecimal billableHours
  String lexusNexusUrl

  static hasMany = [calendar:Appointment]
  static constraints = {}
}
