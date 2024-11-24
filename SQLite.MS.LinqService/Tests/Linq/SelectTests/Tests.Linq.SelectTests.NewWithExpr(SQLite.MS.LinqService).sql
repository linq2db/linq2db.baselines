BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p].[PersonID],
	RTRIM(([p].[FirstName] || '1'), '')
FROM
	[Person] [p]

