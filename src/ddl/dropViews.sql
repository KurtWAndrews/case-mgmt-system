/******************************************************************************
 File Name: cmsDropViews.sql

 Purpose:
   This script is run as part of the drop database process.  it removes all of
 the views in the database

 Revision History

 Who     When           What
 ----    ----------     -------------------------------------------------------
 kwa     11.23.2013     created
 ******************************************************************************/

DROP VIEW Firms;
DROP VIEW Persons;
DROP VIEW EmailAddresses;
DROP VIEW PhoneNumbers;
DROP VIEW Types;
DROP VIEW Clients;
DROP VIEW Contacts;
DROP VIEW Employees;
DROP VIEW DlyLogEntries;
DROP VIEW Lawyers;
DROP VIEW LawyersSpecialties;
DROP VIEW Specialties;
DROP VIEW Cases;
DROP VIEW CasesEmployees;
DROP VIEW Calendars;
DROP VIEW Appointments;
DROP VIEW Attendees;
DROP VIEW BillingRates;
DROP VIEW EmployeeOpenCases;
DROP VIEW States;
