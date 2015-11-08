package com.hickellaw.cms

class Specialty {
  String description
  
  static belongsTo = Lawyer
  static hasMany = [lawyers:Lawyer]
  static constraints = {}
}
