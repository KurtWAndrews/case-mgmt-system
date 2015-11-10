package com.hickellaw.cms

class LegalCase {
  String description
  Client client
  Lawyer primaryLawyer
  Date beginDte
  Date endDte
  Date closeDte
  BigDecimal totalCost
  Boolean isProBono

  static constraints = {}
}
