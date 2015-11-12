/******************************************************************************
 File Name: createDatabase.sql
 
 Purpose:
   This script creates all of the objects within the database
 
 Revision History
 
 Who     When           What
 ----    ----------     -------------------------------------------------------
 kwa     11.10.2015     created
 ******************************************************************************/

@createTables
@createViews
@createSequences
@createTriggers
@createPackages
@loadTables
