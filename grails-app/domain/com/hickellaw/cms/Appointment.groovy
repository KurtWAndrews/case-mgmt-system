package com.hickellaw.cms

class Appointment {
  String description
  Date startDte
  Date endDte
  Firm firm
  Employee organizer

  static belongsTo = [firm:Firm, organizer:Employee]
  static hasMany = [attendees:Person]
  static constraints = {}
}
