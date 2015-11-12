/******************************************************************************
 File Name: cmsCreateTriggers.sql

 Purpose:
   This script is run as bard of the create database process.  it creates all
of the triggers within the database

 Revision History

 Who     When           What
 ----    ----------     -------------------------------------------------------
 kwa     11.23.2013     created
 ******************************************************************************/

CREATE OR REPLACE TRIGGER insPersons
  BEFORE INSERT ON Persons FOR EACH ROW
    DECLARE
      new_person_id Persons.person_id%TYPE;
    BEGIN
      SELECT person_id_seq.nextval
        INTO new_person_id
        FROM dual;
      :NEW.person_id := new_person_id;
    END
;
/

CREATE OR REPLACE TRIGGER insTypes
  BEFORE INSERT ON Types FOR EACH ROW
    DECLARE
      new_type_id Types.type_id%TYPE;
    BEGIN
      SELECT type_id_seq.nextval
        INTO new_type_id
        FROM dual;
      :NEW.type_id := new_type_id;
    END
;
/

CREATE OR REPLACE TRIGGER insDlyLogEntries
  BEFORE INSERT ON DlyLogEntries FOR EACH ROW
    DECLARE
      new_log_entry_id DlyLogEntries.log_entry_id%TYPE;
    BEGIN
      SELECT log_entry_id_seq.nextval
        INTO new_log_entry_id
        FROM dual;
      :NEW.log_entry_id := new_log_entry_id;
    END
;
/

CREATE OR REPLACE TRIGGER insSpecialties
  BEFORE INSERT ON Specialties FOR EACH ROW
    DECLARE
      new_specialty_id Specialties.specialty_id%TYPE;
    BEGIN
      SELECT specialty_id_seq.nextval
        INTO new_specialty_id
        FROM dual;
      :NEW.specialty_id := new_specialty_id;
    END
;
/

CREATE OR REPLACE TRIGGER insCases
  BEFORE INSERT ON Cases FOR EACH ROW
    DECLARE
      new_case_id Cases.case_id%TYPE;
    BEGIN
      SELECT case_id_seq.nextval
        INTO new_case_id
        FROM dual;
      :NEW.case_id := new_case_id;
    END
;
/

CREATE OR REPLACE TRIGGER insAppointment
  BEFORE INSERT ON Appointments FOR EACH ROW
    DECLARE
      new_appt_id Appointments.appt_id%TYPE;
    BEGIN
      SELECT appt_id_seq.nextval
        INTO new_appt_id
        FROM dual;
      :NEW.appt_id := new_appt_id;
    END
;
/

CREATE OR REPLACE TRIGGER insStates
  BEFORE INSERT ON States FOR EACH ROW
    DECLARE
      new_state_id States.state_id%TYPE;
    BEGIN
      SELECT state_id_seq.nextval
        INTO new_state_id
        FROM dual;
      :NEW.state_id := new_state_id;
    END
;
/

CREATE OR REPLACE TRIGGER delPerson
  INSTEAD OF DELETE ON Persons_vw
    BEGIN
      UPDATE EmailAddresses
        SET row_stat_cde = 'I'
        WHERE fk_id = :OLD.person_id;

      UPDATE PhoneNumbers
        SET row_stat_cde = 'I'
        WHERE fk_id = :OLD.person_id;

      UPDATE Clients
        SET row_stat_cde = 'I'
        WHERE client_id = :OLD.person_id;

      UPDATE Contacts
        SET row_stat_cde = 'I'
        WHERE contact_id = :OLD.person_id;

      UPDATE Employees
        SET row_stat_cde = 'I'
        WHERE employee_id = :OLD.person_id;

      UPDATE CasesEmployees
        SET row_stat_cde = 'I'
        WHERE employee_id = :OLD.person_id;

      UPDATE DlyLogEntries
        SET row_stat_cde = 'I'
        WHERE employee_id = :OLD.person_id;

      UPDATE Calendars
        SET row_stat_cde = 'I'
        WHERE employee_id = :OLD.person_id;

      UPDATE Attendees
        SET row_stat_cde = 'I'
        WHERE person_id = :OLD.person_id;

      UPDATE Lawyers
        SET row_stat_cde = 'I'
        WHERE lawyer_id = :OLD.person_id;

      UPDATE LawyersSpecialty
        SET row_stat_cde = 'I'
        WHERE lawyer_id = :OLD.person_id;

      UPDATE Persons
        SET
          user_id = CAST(person_id AS VARCHAR2(40)),
          row_stat_cde = 'I'
        WHERE person_id = :OLD.person_id;
    END
;
/
