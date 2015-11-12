package com.hickellaw.cms

class PersonAppointment implements Serializable {
  Person person
  Appointment appointment

  static mapping = {
    table 'person_appointment'
    version false
    id composite: ['person', 'appointment']
  }
  static constraints = {}

  boolean equals(o) {
    if (this.is(o)) return true
    if (!(o instanceof PersonAppointment)) return false

    PersonAppointment that = (PersonAppointment) o

    if (appointment != that.appointment) return false
    if (person != that.person) return false

    return true
  }

  int hashCode() {
    int result

    result = (person != null ? person.hashCode() : 0)
    result = 31 * result + (appointment != null ? appointment.hashCode() : 0)

    return result
  }
}
