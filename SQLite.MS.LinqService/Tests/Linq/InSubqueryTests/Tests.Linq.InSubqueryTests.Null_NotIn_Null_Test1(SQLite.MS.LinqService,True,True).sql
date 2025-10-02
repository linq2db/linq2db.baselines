BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[t].[PK],
	[t].[ID],
	[t].[GV]
FROM
	[test_in_1] [t]
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			[test_in_2] [p]
		WHERE
			[t].[ID] = [p].[ID] OR [t].[ID] IS NULL AND [p].[ID] IS NULL
	)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[t1].[PK],
	[t1].[ID],
	[t1].[GV]
FROM
	[test_in_1] [t1]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[t1].[PK],
	[t1].[ID],
	[t1].[GV]
FROM
	[test_in_2] [t1]

