/******************************************************************************
 File Name: cmsDropTables.sql

 Purpose:
   This script is run as part of the drop database process.  it removes all of
 the tables in the database

 Revision History

 Who     When           What
 ----    ----------     -------------------------------------------------------
 kwa     11.23.2013     created
 ******************************************************************************/

ALTER TABLE Persons
  DROP CONSTRAINT Persons_fk1
;

ALTER TABLE EmailAddresses
  DROP CONSTRAINT EmailAddresses_fk1
  DROP CONSTRAINT EmailAddresses_fk2
  DROP CONSTRAINT EmailAddresses_fk3
;

ALTER TABLE PhoneNumbers
  DROP CONSTRAINT PhoneNumbers_fk1
  DROP CONSTRAINT PhoneNumbers_fk2
  DROP CONSTRAINT PhoneNumbers_fk3
;

ALTER TABLE Clients
  DROP CONSTRAINT Clients_fk1
;

ALTER TABLE Contacts
  DROP CONSTRAINT Contacts_fk1
  DROP CONSTRAINT Contacts_fk2
;

ALTER TABLE Employees
  DROP CONSTRAINT Employees_fk1;

ALTER TABLE DlyLogEntries
  DROP CONSTRAINT DlyLogEntries_fk1
  DROP CONSTRAINT DlyLogEntries_fk2
;

ALTER TABLE Lawyers
  DROP CONSTRAINT Lawyers_fk1
;

ALTER TABLE LawyersSpecialties
  DROP CONSTRAINT LawyersSpecialties_fk1
  DROP CONSTRAINT LawyersSpecialties_fk2
;

ALTER TABLE Cases
  DROP CONSTRAINT Cases_fk1
  DROP CONSTRAINT Cases_fk2
;

ALTER TABLE CasesEmployees
  DROP CONSTRAINT CasesEmployees_fk1
  DROP CONSTRAINT CasesEmployees_fk2
;

ALTER TABLE Calendars
  DROP CONSTRAINT Calendars_fk1
  DROP CONSTRAINT Calendars_fk2
;

ALTER TABLE Attendees
  DROP CONSTRAINT Attendees_fk1
  DROP CONSTRAINT Attendees_fk2
;

DROP TABLE cms_firm;
DROP TABLE Persons;
DROP TABLE EmailAddresses;
DROP TABLE PhoneNumbers;
DROP TABLE Types;
DROP TABLE Clients;
DROP TABLE Contacts;
DROP TABLE Employees;
DROP TABLE DlyLogEntries;
DROP TABLE Lawyers;
DROP TABLE LawyersSpecialties;
DROP TABLE Specialties;
DROP TABLE Cases;
DROP TABLE CasesEmployees;
DROP TABLE Calendars;
DROP TABLE Appointments;
DROP TABLE Attendees;
DROP TABLE States;
