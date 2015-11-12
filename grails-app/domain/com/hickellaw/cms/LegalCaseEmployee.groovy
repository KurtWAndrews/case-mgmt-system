package com.hickellaw.cms

class LegalCaseEmployee implements Serializable {
  LegalCase legalCase
  Employee employee

  static mapping = {
    table 'legal_case_employee'
    version false
    id composite: ['legalCase', 'employee']
  }
  static constraints = {}

  boolean equals(o) {
    if (this.is(o)) return true
    if (!(o instanceof LegalCaseEmployee)) return false

    LegalCaseEmployee that = (LegalCaseEmployee) o

    if (employee != that.employee) return false
    if (legalCase != that.legalCase) return false

    return true
  }

  int hashCode() {
    int result

    result = (legalCase != null ? legalCase.hashCode() : 0)
    result = 31 * result + (employee != null ? employee.hashCode() : 0)

    return result
  }
}
