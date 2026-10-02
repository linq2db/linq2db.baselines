-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	CAST(CAST(Round((JulianDay([b].[FinishedOn]) - JulianDay([x].[StartedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 864000000000,
	CAST((CAST(Round((JulianDay([b].[FinishedOn]) - JulianDay([x].[StartedOn])) * 86400000) AS INTEGER) * 10000) / 864000000000 AS INTEGER)
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
ORDER BY
	[x].[Id]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
WHERE
	CAST(CAST(Round((JulianDay([b].[FinishedOn]) - JulianDay([x].[StartedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 864000000000 > 1

