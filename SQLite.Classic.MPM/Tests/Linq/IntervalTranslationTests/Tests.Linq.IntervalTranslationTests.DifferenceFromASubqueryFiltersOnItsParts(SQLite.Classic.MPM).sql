-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn VarChar(23) -- AnsiString
SET     @StartedOn = '2026-01-01 10:00:00.000'
DECLARE @FinishedOn VarChar(23) -- AnsiString
SET     @FinishedOn = '2026-01-01 15:00:00.000'

INSERT INTO [EventRow]
(
	[Id],
	[StartedOn],
	[FinishedOn]
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @StartedOn VarChar(23) -- AnsiString
SET     @StartedOn = '2026-01-01 10:00:00.000'
DECLARE @FinishedOn VarChar(23) -- AnsiString
SET     @FinishedOn = '2026-01-01 11:00:00.000'

INSERT INTO [EventRow]
(
	[Id],
	[StartedOn],
	[FinishedOn]
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[x].[Id]
FROM
	[EventRow] [x]
WHERE
	CAST(CAST(Round((JulianDay([x].[FinishedOn]) - JulianDay([x].[StartedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 36000000000 > 3

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[x].[Id]
FROM
	[EventRow] [x]
WHERE
	CAST(((CAST(Round((JulianDay([x].[FinishedOn]) - JulianDay([x].[StartedOn])) * 86400000) AS INTEGER) * 10000) / 36000000000) % 24 AS INTEGER) = 1

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[x].[Id]
FROM
	[EventRow] [x]
ORDER BY
	CAST(Round((JulianDay([x].[FinishedOn]) - JulianDay([x].[StartedOn])) * 86400000) AS INTEGER) * 10000 DESC

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	CAST(Round((JulianDay([x].[FinishedOn]) - JulianDay([x].[StartedOn])) * 86400000) AS INTEGER) * 10000
FROM
	[EventRow] [x]
ORDER BY
	[x].[Id]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[r].[Id],
	CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000
FROM
	[EventRow] [r]
ORDER BY
	[r].[Id]

