BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[pp].[PersonID],
	'  ' || [pp].[FirstName] || ' '
FROM
	[Person] [pp]
WHERE
	[pp].[PersonID] = 1 AND LTRIM(('  ' || [pp].[FirstName] || ' '), (' ')) = 'John '

