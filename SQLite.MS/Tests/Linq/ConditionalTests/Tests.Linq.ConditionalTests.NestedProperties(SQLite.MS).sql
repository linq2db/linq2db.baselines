BeforeExecute
-- SQLite.MS SQLite

SELECT
	[x].[Id],
	[x].[StringProp]
FROM
	[ConditionalData] [x]
WHERE
	CASE
		WHEN [x].[StringProp] LIKE '%1%' ESCAPE '~' THEN '1'
		ELSE '2'
	END = '-1'

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[StringProp]
FROM
	[ConditionalData] [t1]

