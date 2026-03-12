-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[x].[Id],
	CASE
		WHEN [x].[StringProp] = '1' THEN 1
		ELSE 0
	END,
	[x].[StringProp]
FROM
	[ConditionalData] [x]
WHERE
	NULLIF([x].[StringProp], '1') LIKE '%2%' ESCAPE '~'

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[StringProp]
FROM
	[ConditionalData] [t1]

