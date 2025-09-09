BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

SELECT
	[t1].[PersonID],
	[t1].[Gender],
	[t1].[FirstName],
	[t1].[LastName],
	[t1].[MiddleName]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = 1
LIMIT 1

