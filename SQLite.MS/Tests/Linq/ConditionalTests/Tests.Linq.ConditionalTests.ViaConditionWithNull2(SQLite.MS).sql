-- SQLite.MS SQLite

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
	CASE
		WHEN [x].[StringProp] = '1' THEN [x].[StringProp]
		ELSE NULL
	END LIKE '%2%' ESCAPE '~'

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[StringProp]
FROM
	[ConditionalData] [t1]

