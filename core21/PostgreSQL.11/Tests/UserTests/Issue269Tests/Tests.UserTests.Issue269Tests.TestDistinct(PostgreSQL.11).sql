﻿BeforeExecute
-- SQLite.Default SQLite.MS SQLite

SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

BeforeExecute
-- SQLite.Default SQLite.MS SQLite

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	pat."PersonID",
	pat."Diagnosis"
FROM
	"Patient" pat
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Person" per
				LEFT JOIN "Patient" "a_Patient" ON per."PersonID" = "a_Patient"."PersonID"
		WHERE
			per."PersonID" = pat."PersonID" AND "a_Patient"."Diagnosis" ILIKE '%with%' ESCAPE '~'
	)

