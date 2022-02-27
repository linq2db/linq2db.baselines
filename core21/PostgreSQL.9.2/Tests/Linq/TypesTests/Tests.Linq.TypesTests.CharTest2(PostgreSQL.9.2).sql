BeforeExecute
-- SQLite.Default SQLite.MS SQLite

SELECT
	[t1].[PersonID],
	[t1].[FirstName],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	'M' = p."Gender"

