BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"p"."FirstName", 
	"p"."PersonID", 
	"p"."LastName", 
	"p"."MiddleName", 
	"p"."Gender"
FROM
	"Person" "p"
		INNER JOIN ( 
			SELECT
				'Doe' as "Item"
			FROM SYSIBM.SYSDUMMY1
		) "n" ON "p"."LastName" = "n"."Item"

BeforeExecute
-- SQLite.MS SQLite

SELECT 
	[t1].[FirstName], 
	[t1].[PersonID], 
	[t1].[LastName], 
	[t1].[MiddleName], 
	[t1].[Gender]
FROM
	[Person] [t1]

BeforeExecute
-- SQLite.MS SQLite

SELECT 
	[t1].[PersonID], 
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

