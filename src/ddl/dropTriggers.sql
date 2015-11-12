/******************************************************************************
 File Name: cmsDropTriggers.sql

 Purpose:
   This script is run as part of the drop database process.  it removes all of
 the triggers in the database

 Revision History

 Who     When           What
 ----    ----------     -------------------------------------------------------
 kwa     11.23.2013     created
 ******************************************************************************/

DROP TRIGGER insPerson;
DROP TRIGGER insType;
DROP TRIGGER insDailyLog;
DROP TRIGGER insSpecialty;
DROP TRIGGER insCase;
DROP TRIGGER insAppointment;
DROP TRIGGER insApplLog;
DROP TRIGGER delPerson;
