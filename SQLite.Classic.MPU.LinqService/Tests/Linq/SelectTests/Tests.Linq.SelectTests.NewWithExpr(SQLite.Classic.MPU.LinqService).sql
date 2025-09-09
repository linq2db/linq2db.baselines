BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

SELECT
	[p].[PersonID],
	RTRIM(([p].[FirstName] || '1'), '')
FROM
	[Person] [p]

