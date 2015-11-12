package com.hickellaw.cms

class LawyerSpecialty implements Serializable {
  Lawyer lawyer
  Specialty specialty

  static mapping = {
    table 'lawyer_specialty'
    version false
    id composite: ['lawyer', 'specialty']
  }
  static constraints = {}

  boolean equals(o) {
    if (this.is(o)) return true
    if (! (o instanceof LawyerSpecialty)) return false

    LawyerSpecialty that = (LawyerSpecialty) o

    if (lawyer != that.lawyer) return false
    if (specialty != that.specialty) return false

    return true
  }

  int hashCode() {
    int result

    result = (lawyer != null ? lawyer.hashCode() : 0)
    result = 31 * result + (specialty != null ? specialty.hashCode() : 0)

    return result
  }
}
