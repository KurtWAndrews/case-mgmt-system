/******************************************************************************
 File Name: createSequences.sql
 
 Purpose:
   This script is run as bard of the create database process.  it creates all 
 of the sequences within the database
 
 Revision History
 
 Who     When           What
 ----    ----------     -------------------------------------------------------
 kwa     11.10.2015     created
 ******************************************************************************/

CREATE SEQUENCE address_seq         INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE appointment_seq     INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE business_entity_seq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE daily_log_entry_seq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE email_address_seq   INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE legal_case_seq      INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE phone_number_seq    INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE specialty_seq       INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE state_seq           INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE type_seq            INCREMENT BY 1 START WITH 1;
