-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	CAST(CAST(Round((JulianDay([b].[FinishedOn]) - JulianDay([x].[StartedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 864000000000,
	CAST((CAST(Round((JulianDay([b].[FinishedOn]) - JulianDay([x].[StartedOn])) * 86400000) AS INTEGER) * 10000) / 864000000000 AS INTEGER),
	CAST(((CAST(Round((JulianDay([b].[FinishedOn]) - JulianDay([x].[StartedOn])) * 86400000) AS INTEGER) * 10000) / 36000000000) % 24 AS INTEGER),
	CAST(((CAST(Round((JulianDay([b].[FinishedOn]) - JulianDay([x].[StartedOn])) * 86400000) AS INTEGER) * 10000) / 600000000) % 60 AS INTEGER),
	CAST(CAST(Round((JulianDay([x].[StartedOn]) - JulianDay([b].[FinishedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 36000000000,
	CAST(((CAST(Round((JulianDay([x].[StartedOn]) - JulianDay([b].[FinishedOn])) * 86400000) AS INTEGER) * 10000) / 36000000000) % 24 AS INTEGER)
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
ORDER BY
	[x].[Id]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
WHERE
	CAST(CAST(Round((JulianDay([b].[FinishedOn]) - JulianDay([x].[StartedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 864000000000 > 1

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Hours  -- Int32
SET     @Hours = 3

SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
WHERE
	CAST(((CAST(Round((JulianDay([b].[FinishedOn]) - JulianDay([x].[StartedOn])) * 86400000) AS INTEGER) * 10000) / 36000000000) % 24 AS INTEGER) = @Hours

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Minutes  -- Int32
SET     @Minutes = 15

SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
WHERE
	CAST(((CAST(Round((JulianDay([b].[FinishedOn]) - JulianDay([x].[StartedOn])) * 86400000) AS INTEGER) * 10000) / 600000000) % 60 AS INTEGER) = @Minutes

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
WHERE
	CAST(CAST(Round((JulianDay([x].[StartedOn]) - JulianDay([b].[FinishedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 36000000000 < -1

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Hours  -- Int32
SET     @Hours = 3

SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
WHERE
	CAST(((CAST(Round((JulianDay([x].[StartedOn]) - JulianDay([b].[FinishedOn])) * 86400000) AS INTEGER) * 10000) / 36000000000) % 24 AS INTEGER) = -@Hours

