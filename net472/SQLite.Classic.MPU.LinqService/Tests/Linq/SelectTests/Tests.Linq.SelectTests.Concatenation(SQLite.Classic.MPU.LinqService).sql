BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[p].[PersonID],
	'123' || [p].[FirstName] || '456'
FROM
	[Person] [p]
WHERE
	'123' || [p].[FirstName] || '456' = '123John456' AND
	[p].[PersonID] = 1

