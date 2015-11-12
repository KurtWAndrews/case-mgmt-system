/******************************************************************************
 File Name: cmsDropSequences.sql
 
 Purpose:
   This script is run as part of the drop database process.  it removes all of 
 the sequences in the database
 
 Revision History
 
 Who     When           What
 ----    ----------     -------------------------------------------------------
 kwa     11.23.2013     created
 ******************************************************************************/

DROP SEQUENCE person_id_seq;
DROP SEQUENCE type_id_seq;
DROP SEQUENCE log_entry_id_seq;
DROP SEQUENCE specialty_id_seq;
DROP SEQUENCE case_id_seq;
DROP SEQUENCE appt_id_seq;
DROP SEQUENCE appl_log_key_id_seq;
DROP SEQUENCE state_id_seq;
