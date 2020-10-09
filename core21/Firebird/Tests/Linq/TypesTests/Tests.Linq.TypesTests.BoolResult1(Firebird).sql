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

BeforeExecute
-- Firebird

SELECT 
	"a_Patient"."PersonID", 
	"a_Patient"."Diagnosis"
FROM
	"Person" "p"
		LEFT JOIN "Patient" "a_Patient" ON "p"."PersonID" = "a_Patient"."PersonID"

