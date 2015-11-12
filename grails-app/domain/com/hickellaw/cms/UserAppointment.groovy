package com.hickellaw.cms

class UserAppointment implements Serializable {
  User user
  Appointment appointment

  static mapping = {
    table 'user_appointment'
    version false
    id composite: ['user', 'appointment']
  }
  static constraints = {}

  boolean equals(o) {
    if (this.is(o)) return true
    if (!(o instanceof UserAppointment)) return false

    UserAppointment that = (UserAppointment) o

    if (appointment != that.appointment) return false
    if (user != that.user) return false

    return true
  }

  int hashCode() {
    int result

    result = (user != null ? user.hashCode() : 0)
    result = 31 * result + (appointment != null ? appointment.hashCode() : 0)

    return result
  }
}
