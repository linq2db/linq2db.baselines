BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			[test_in_2] [p]
		WHERE
			[t].[ID] = [p].[ID]
	)
ORDER BY
	[t].[ID]

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

