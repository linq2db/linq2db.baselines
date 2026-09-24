-- SQLite.Classic SQLite
SELECT
	[e].[Id],
	Replace([e].[Name], 'o', '0'),
	CASE
		WHEN [e].[Name] IS NULL OR Length([e].[Name]) >= 12 THEN [e].[Name]
		ELSE SUBSTR(REPLACE(HEX(ZEROBLOB(12)), '0', '.'), 1, 12 - Length([e].[Name])) || [e].[Name]
	END,
	LTRIM([e].[Name], ' '),
	RTRIM([e].[Name], ' '),
	CASE
		WHEN [e].[Name] > 'Bob' OR [e].[Name] IS NULL THEN 1
		WHEN [e].[Name] = 'Bob' THEN 0
		ELSE -1
	END
FROM
	[BatchCalcEntity] [e]

-- SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Num],
	[t1].[Dbl],
	[t1].[Dec],
	[t1].[Name],
	[t1].[Date]
FROM
	[BatchCalcEntity] [t1]

