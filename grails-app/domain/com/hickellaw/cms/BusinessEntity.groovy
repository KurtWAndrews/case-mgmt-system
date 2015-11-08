package com.hickellaw.cms

class BusinessEntity {
  Address address
  
  static mapping = {tablePerHierarchy false}
  static hasMany = [phoneNumbers: PhoneNumber, emailAddresses: EmailAddress]
  static constraints = {}
}
