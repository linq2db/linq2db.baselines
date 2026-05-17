-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[ID],
	[t1].[Value_1]
FROM
	(
		SELECT
			[r].[PersonID] as [ID],
			1 as [Value_1]
		FROM
			[Person] [r]
	) [t1]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[ID],
	[t1].[Value_1]
FROM
	(
		SELECT
			[r].[PersonID] as [ID],
			2147483648.123 as [Value_1]
		FROM
			[Person] [r]
	) [t1]

