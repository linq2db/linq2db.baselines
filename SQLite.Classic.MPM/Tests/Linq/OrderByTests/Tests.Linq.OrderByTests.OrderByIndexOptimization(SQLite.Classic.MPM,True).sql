BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[s].[PersonID],
	Substr([s].[LastName], 1, 3)
FROM
	[Person] [s]
WHERE
	[s].[PersonID] IN (1, 3)
ORDER BY
	2 DESC

