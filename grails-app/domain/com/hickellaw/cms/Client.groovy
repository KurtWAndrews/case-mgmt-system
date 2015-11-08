package com.hickellaw.cms

class Client extends Person {
  String companyName
  
  static hasMany = [contacts: Contact, cases:LegalCase]
  static constraints = {}
}
