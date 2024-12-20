BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[pp].[PersonID],
	'  ' || [pp].[FirstName] || ' '
FROM
	[Person] [pp]
WHERE
	RTRIM(('  ' || [pp].[FirstName] || ' '), ' ') = '  John' AND
	[pp].[PersonID] = 1

