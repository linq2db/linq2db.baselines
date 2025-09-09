BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[PersonID],
	[t1].[FirstName],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	p."Gender" = 'M'

