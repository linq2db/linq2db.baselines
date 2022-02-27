BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @doe Text(3) -- String
SET     @doe = 'Doe'

SELECT
	t1."FirstName"
FROM
	"Person" p
		INNER JOIN LATERAL (
			SELECT
				p."FirstName"
			UNION ALL
			SELECT
				p."LastName" as "FirstName"
			UNION ALL
			SELECT
				'John' as "FirstName"
			UNION ALL
			SELECT
				:doe as "FirstName"
		) t1 ON 1=1

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
-- SQLite.Default SQLite.MS SQLite

SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @doe Text(4) -- String
SET     @doe = 'Doe1'

SELECT
	t1."FirstName"
FROM
	"Person" p
		INNER JOIN LATERAL (
			SELECT
				p."FirstName"
			UNION ALL
			SELECT
				p."LastName" as "FirstName"
			UNION ALL
			SELECT
				'John' as "FirstName"
			UNION ALL
			SELECT
				:doe as "FirstName"
		) t1 ON 1=1

