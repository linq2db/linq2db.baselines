BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @doe Varchar2(3) -- String
SET     @doe = 'Doe'

SELECT
	t1."FirstName"
FROM
	"Person" p
		CROSS APPLY (
			SELECT
				p."FirstName"
			FROM SYS.DUAL
			UNION ALL
			SELECT
				p."LastName" as "FirstName"
			FROM SYS.DUAL
			UNION ALL
			SELECT
				'John' as "FirstName"
			FROM SYS.DUAL
			UNION ALL
			SELECT
				:doe as "FirstName"
			FROM SYS.DUAL
		) t1

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
-- Oracle.Managed Oracle12
DECLARE @doe Varchar2(4) -- String
SET     @doe = 'Doe1'

SELECT
	t1."FirstName"
FROM
	"Person" p
		CROSS APPLY (
			SELECT
				p."FirstName"
			FROM SYS.DUAL
			UNION ALL
			SELECT
				p."LastName" as "FirstName"
			FROM SYS.DUAL
			UNION ALL
			SELECT
				'John' as "FirstName"
			FROM SYS.DUAL
			UNION ALL
			SELECT
				:doe as "FirstName"
			FROM SYS.DUAL
		) t1

