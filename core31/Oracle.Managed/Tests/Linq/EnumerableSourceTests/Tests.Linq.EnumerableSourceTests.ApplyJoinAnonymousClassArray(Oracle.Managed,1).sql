BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
		CROSS APPLY (
			SELECT 1 AS ID, 'Janet' AS "Name", p."LastName" AS "Sub" FROM sys.dual
			UNION ALL
			SELECT 1, 'Doe', p."LastName" FROM sys.dual) n
WHERE
	p."LastName" = n."Name"

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

