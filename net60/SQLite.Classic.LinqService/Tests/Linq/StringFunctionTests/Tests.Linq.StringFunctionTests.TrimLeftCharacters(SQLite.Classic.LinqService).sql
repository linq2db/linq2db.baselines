BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[pp].[PersonID],
	'  ' || [pp].[FirstName] || ' '
FROM
	[Person] [pp]
WHERE
	LTRIM(('  ' || [pp].[FirstName] || ' '), (' J')) = 'ohn ' AND
	[pp].[PersonID] = 1

