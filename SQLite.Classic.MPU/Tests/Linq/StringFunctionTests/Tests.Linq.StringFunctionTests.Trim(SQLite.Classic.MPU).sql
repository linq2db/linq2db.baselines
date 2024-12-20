BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[pp].[PersonID],
	'  ' || [pp].[FirstName] || ' '
FROM
	[Person] [pp]
WHERE
	Trim('  ' || [pp].[FirstName] || ' ') = 'John' AND
	[pp].[PersonID] = 1

