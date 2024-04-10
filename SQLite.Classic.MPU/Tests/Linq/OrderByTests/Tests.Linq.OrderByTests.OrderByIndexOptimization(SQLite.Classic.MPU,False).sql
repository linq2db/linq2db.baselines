BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[s].[ID],
	[s].[CuttedName]
FROM
	(
		SELECT
			Substr([p].[LastName], 1, 3) as [CuttedName],
			[p].[PersonID] as [ID]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] IN (1, 3)
	) [s]
ORDER BY
	[s].[CuttedName] DESC

