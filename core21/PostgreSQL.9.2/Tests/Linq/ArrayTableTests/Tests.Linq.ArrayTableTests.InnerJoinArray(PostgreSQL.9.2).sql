BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
		INNER JOIN (
			SELECT
				'Janet' as c1
			UNION ALL
			SELECT
				'Doe' as c1
			UNION ALL
			SELECT
				'John' as c1
			UNION ALL
			SELECT
				'Doe' as c1
		) t1 ON p."LastName" = t1.c1

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

