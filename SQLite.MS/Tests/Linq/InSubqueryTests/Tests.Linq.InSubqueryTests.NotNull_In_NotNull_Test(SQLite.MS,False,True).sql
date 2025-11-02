-- SQLite.MS SQLite

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	[t].[ID] IN (
		SELECT
			[p].[ID]
		FROM
			[test_in_2] [p]
	)

-- SQLite.MS SQLite

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

-- SQLite.MS SQLite

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

