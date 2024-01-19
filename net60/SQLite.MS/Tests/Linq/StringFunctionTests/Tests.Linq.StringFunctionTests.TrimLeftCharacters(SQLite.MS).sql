BeforeExecute
-- SQLite.MS SQLite

SELECT
	[pp].[PersonID],
	'  ' || [pp].[FirstName] || ' '
FROM
	[Person] [pp]
WHERE
	LTRIM(('  ' || [pp].[FirstName] || ' '), (' J')) = 'ohn ' AND
	[pp].[PersonID] = 1

