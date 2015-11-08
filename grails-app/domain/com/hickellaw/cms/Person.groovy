package com.hickellaw.cms

class Person extends BusinessEntity {
  String fname
  String lname
  String userId
  String userPassword

  static belongsTo = Appointment
  static hasMany=[appiontments:Appointment]
  static constraints = {}
}
