-- SQLite.MS SQLite

SELECT
	[t1].[PersonID],
	[t1].[FirstName],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- Oracle.11.Managed Oracle11

SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	'M' = p."Gender"

