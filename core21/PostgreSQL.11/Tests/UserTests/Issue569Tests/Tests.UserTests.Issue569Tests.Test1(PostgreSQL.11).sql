BeforeExecute
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
	patient_1."PersonID",
	person_1."FirstName",
	x."Taxonomy"
FROM
	"Patient" patient_1
		CROSS JOIN "Person" person_1
		LEFT JOIN "Doctor" x ON x."PersonID" = person_1."PersonID" AND x."PersonID" = patient_1."PersonID"
WHERE
	person_1."FirstName" LIKE 'J%' ESCAPE '~'
ORDER BY
	patient_1."PersonID",
	person_1."FirstName",
	x."Taxonomy"

BeforeExecute
-- SQLite.Default SQLite.MS SQLite

SELECT
	[t1].[PersonID],
	[t1].[Taxonomy]
FROM
	[Doctor] [t1]

