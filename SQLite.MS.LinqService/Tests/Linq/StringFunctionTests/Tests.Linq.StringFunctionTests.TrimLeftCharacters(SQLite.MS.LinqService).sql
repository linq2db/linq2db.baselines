BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p].[PersonID],
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	LTRIM(('  ' || [p].[FirstName] || ' '), ' J') = 'ohn ' AND
	[p].[PersonID] = 1

