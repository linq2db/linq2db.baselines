-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	([p].[PersonID] | ([p].[PersonID] + 1) - ([p].[PersonID] & 1) * 2) = [p].[PersonID]

