package com.hickellaw.cms

class EmailAddress {
  Type type
  String emailAddress
  BusinessEntity owner
  
  static belongsTo = [owner: BusinessEntity]
  static constraints = {}
}
