package com.hickellaw.cms

/**
 * A person's, or the firm's primary postal address.
 */
class Address {
  /**
   * street number and name
   */
  String street

  /**
   * appartment, suite, room, or office number if present
   */
  String aptSuite

  /**
   * attention line if present
   */
  String attn

  /**
   * city name
   */
  String city

  /**
   * US state
   */
  State  state

  /**
   * zip or zip+4
   */
  String postalCode

  /**
   * The constraints used by GORM to map the address class to the database
   * and by by the AddressController to validate input into the address
   * fields.
   */
  static constraints = {}
}
