-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	(
		SELECT
			[se].[Value]
		FROM
			[Issue4723Table2] [se]
		WHERE
			[se].[Id] = [t1].[Id]
		LIMIT 1
	)
FROM
	[Issue4723Table1] [t1]

