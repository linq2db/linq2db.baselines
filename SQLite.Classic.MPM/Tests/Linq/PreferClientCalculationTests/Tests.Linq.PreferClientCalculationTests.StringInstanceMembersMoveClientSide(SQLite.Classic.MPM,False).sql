-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[e].[Id],
	Replace([e].[Name], 'o', '0'),
	CASE
		WHEN [e].[Name] IS NULL OR Length([e].[Name]) >= 12 THEN [e].[Name]
		ELSE SUBSTR(REPLACE(HEX(ZEROBLOB(12)), '0', '.'), 1, 12 - Length([e].[Name])) || [e].[Name]
	END,
	LTRIM([e].[Name], ' '),
	RTRIM([e].[Name], ' ')
FROM
	[StringCalcEntity] [e]

