-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	1000 - Coalesce((
		SELECT
			SUM([i].[DoubleValue])
		FROM
			[Inner] [i]
		WHERE
			[i].[Group] = [o].[Group]
	), 0)
FROM
	[Outer] [o]
WHERE
	[o].[Id] = 2
LIMIT 1

