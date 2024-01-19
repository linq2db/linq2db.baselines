BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[pp].[PersonID],
	'  ' || [pp].[FirstName] || ' '
FROM
	[Person] [pp]
WHERE
	RTRIM(('  ' || [pp].[FirstName] || ' '), ' n') = '  Joh' AND
	[pp].[PersonID] = 1

