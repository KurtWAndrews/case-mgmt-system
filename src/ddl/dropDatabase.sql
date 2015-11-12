/******************************************************************************
 File Name: cmsDropDatabase.sql
 
 Purpose:
   This script drops all of the objects in the database
 
 Revision History
 
 Who     When           What
 ----    ----------     -------------------------------------------------------
 kwa     11.23.2013     created
 ******************************************************************************/

@cmsDropPackages
@cmsDropTriggers
@cmsDropSequences
@cmsDropViews
@cmsDropTables
