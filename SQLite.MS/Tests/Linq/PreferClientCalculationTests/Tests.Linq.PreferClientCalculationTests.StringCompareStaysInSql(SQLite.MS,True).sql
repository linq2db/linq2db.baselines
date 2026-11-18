-- SQLite.MS SQLite
SELECT
	[e].[Id],
	CASE
		WHEN [e].[Name] > 'apple' OR [e].[Name] IS NULL THEN 1
		WHEN [e].[Name] = 'apple' THEN 0
		ELSE -1
	END
FROM
	[BatchCalcEntity] [e]

