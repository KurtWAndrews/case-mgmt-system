package com.hickellaw.cms

class PhoneNumber {
  Type type
  String phoneNumber
  BusinessEntity owner
  
  static belongsTo = [owner: BusinessEntity]
  static constraints = {}
}
