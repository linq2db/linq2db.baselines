-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t].[PK],
	[t].[ID],
	[t].[GV]
FROM
	[test_in_1] [t]
WHERE
	[t].[ID] IS NULL OR NOT EXISTS(
		SELECT
			*
		FROM
			[test_in_2] [p]
		WHERE
			[t].[ID] = [p].[ID]
	)

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[PK],
	[t1].[ID],
	[t1].[GV]
FROM
	[test_in_1] [t1]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[PK],
	[t1].[ID]
FROM
	[test_in_2] [t1]

