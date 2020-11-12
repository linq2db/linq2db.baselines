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
-- Firebird3 Firebird

SELECT
	"p_1"."FirstName",
	"p_1"."PersonID",
	"p_1"."LastName",
	"p_1"."MiddleName",
	"p_1"."Gender"
FROM
	"Person" "p_1"
WHERE
	("p_1"."FirstName" CONTAINING 'Jo' AND ("p_1"."FirstName" CONTAINING 'Jo') IS NOT NULL)
ORDER BY
	"p_1"."FirstName" CONTAINING 'Jo'

