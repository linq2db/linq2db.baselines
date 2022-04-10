BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[p].[PersonID],
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	LTrim('  ' || [p].[FirstName] || ' ') = 'John ' AND
	[p].[PersonID] = 1

