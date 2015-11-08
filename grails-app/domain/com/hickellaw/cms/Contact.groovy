package com.hickellaw.cms

class Contact extends Person {
  Client client
  LegalCase legalCase
  
  static belongsTo = [client: Client]
  static constraints = {}
}
