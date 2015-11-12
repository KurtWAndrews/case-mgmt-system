/******************************************************************************
 File Name: cmsCreateViews.sql

 Purpose:
   This script is run as part of the create database process.  it creates all
 of the views within the database

 Revision History

 Who     When           What
 ----    ----------     -------------------------------------------------------
 kwa     11.23.2013     created
 ******************************************************************************/

CREATE OR REPLACE VIEW Appointments AS
  SELECT
      ROWID row_id
      ,appt_id
      ,appt_start_tsp
      ,appt_end_tsp
      ,dsc
      ,row_stat_cde
    FROM Appointments
    WHERE row_stat_cde = 'A'
;

CREATE OR REPLACE VIEW Attendees AS
  SELECT
      ROWID row_id
      ,appt_id
      ,person_id
      ,row_stat_cde
    FROM Attendees
    WHERE row_stat_cde = 'A'
;

CREATE OR REPLACE VIEW Calendars AS
  SELECT
      ROWID row_id
      ,employee_id
      ,appt_id
      ,row_stat_cde
    FROM Calendars
    WHERE row_stat_cde = 'A'
;

CREATE OR REPLACE VIEW Cases AS
  SELECT
      ROWID row_id
      ,case_id
      ,client_id
      ,dsc
      ,primary_lawyer
      ,begin_dte
      ,end_dte
      ,close_dte
      ,total_cost
      ,row_stat_cde
    FROM Cases
    WHERE row_stat_cde= 'A'
;

CREATE OR REPLACE VIEW CasesEmployees AS
  SELECT
      ROWID row_id
      ,case_id
      ,employee_id
      ,row_stat_cde
    FROM CasesEmployees
    WHERE row_stat_cde = 'A'
;

CREATE OR REPLACE VIEW Clients AS
  SELECT
      ROWID row_id
      ,client_id
      ,company
      ,row_stat_cde
    FROM Clinents
    WHERE row_stat_cde = 'A'
;

CREATE OR REPLACE VIEW Contacts AS
  SELECT
      ROWID row_id
      ,contact_id
      ,client_id
      ,row_stat_cde
    FROM Contacts
    WHERE row_stat_cde = 'A'
;

CREATE OR REPLACE VIEW DlyLogEntries AS
  SELECT
      ROWID row_id
      ,log_entry_id
      ,employee_id
      ,case_id
      ,log_dte
      ,hours_billed
      ,row_stat_cde
    FROM DlyLogEntries
    WHERE row_stat_cde = 'A'
;

CREATE OR REPLACE VIEW EmailAddresses AS
  SELECT
      ROWID row_id
      ,fk_id
      ,email_type
      ,email_address
      ,row_stat_cde
    FROM EmailAddresses
    WHERE row_stat_cde = 'A'
;

CREATE OR REPLACE VIEW Employees AS
  SELECT
      ROWID row_id
      ,employee_id
      ,salary
      ,row_stat_cde
    FROM Employees
    WHERE row_stat_cde = 'A'
;

CREATE OR REPLACE VIEW Firms AS
  SELECT
      ROWID row_id
      ,firm_id
      ,firm_name
      ,address1
      ,address2
      ,city
      ,state
      ,zip_cde
      ,billable_hours
      ,news_letter
      ,disclaimer
      ,lexusnexus_url
      ,row_stat_cde
    FROM Firms
    WHERE row_stat_cde = 'A'
;

CREATE OR REPLACE VIEW Lawyers AS
  SELECT
      ROWID row_id
      ,lawyer_id
      ,billing_rate
      ,row_stat_cde
    FROM Lawyers
    WHERE row_stat_cde = 'A'
;

CREATE OR REPLACE VIEW LawyersSpecialties AS
  SELECT
      ROWID row_id
      ,lawyer_id
      ,specialty_id
      ,row_stat_cde
    FROM LawyersSpecialties
    WHERE row_stat_cde = 'A'
;

CREATE OR REPLACE VIEW Persons AS
  SELECT
      ROWID row_id
      ,person_id
      ,fname
      ,lname
      ,address1
      ,address2
      ,city
      ,state
      ,zip_cde
      ,user_id
      ,row_stat_cde
    FROM Persons
    WHERE row_stat_cde = 'A'
;

CREATE OR REPLACE VIEW PhoneNumbers AS
  SELECT
      ROWID row_id
      ,fk_id
      ,phone_type
      ,phone_number
      ,row_stat_cde
    FROM PhoneNumbers
    WHERE row_stat_cde = 'A'
;

CREATE OR REPLACE VIEW Specialties AS
  SELECT
      ROWID row_id
      ,specialty_id
      ,dsc
      ,row_stat_cde
    FROM Specialties
    WHERE row_stat_cde = 'A'
;

CREATE OR REPLACE VIEW Types AS
  SELECT
      ROWID row_id
      ,type_id
      ,dsc
      ,row_stat_cde
    FROM Types
    WHERE row_stat_cde = 'A'
;

CREATE OR REPLACE VIEW States AS
  SELECT
      ROWID row_id
      ,state_id
      ,state_name
      ,row_stat_cde
    FROM States
    WHERE row_stat_cde = 'A'
;

CREATE OR REPLACE VIEW BillingRates AS
  SELECT
      p.lname
      ,p.fname
      ,CASE
         WHEN l.lawyer_id IS NULL THEN 'E'
         ELSE 'L'
       END employee_type
      ,e.salary
      ,CASE
         WHEN l.lawyer_id IS NULL THEN e.salary / f.billable_hours
         ELSE l.billing_rate
       END billing_rate
    FROM Employees e
      LEFT OUTER JOIN Lawyers l
        ON l.lawyer_id = e.employee_id
      INNER JOIN Persons p
        ON e.employee_id = p.person_id
      CROSS JOIN Firms f
;

CREATE OR REPLACE VIEW EmployeeOpenCases AS
  SELECT
      ce.case_id
      ,ce.employee_id
      ,c.client_id
      ,ce.row_stat_cde
    FROM CasesEmployees ce
      INNER JOIN Cases c
        ON ce.case_id = c.case_id
    WHERE c.close_dte IS NULL
;
