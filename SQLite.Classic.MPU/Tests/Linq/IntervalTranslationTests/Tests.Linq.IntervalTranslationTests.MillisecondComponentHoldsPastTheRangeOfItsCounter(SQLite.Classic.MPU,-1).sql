-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn VarChar(23) -- AnsiString
SET     @StartedOn = '1970-02-03 04:05:06.780'
DECLARE @FinishedOn VarChar(23) -- AnsiString
SET     @FinishedOn = '1970-01-02 00:00:00.000'

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

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StartedOn VarChar(23) -- AnsiString
SET     @StartedOn = '2045-06-05 04:03:02.340'
DECLARE @FinishedOn VarChar(23) -- AnsiString
SET     @FinishedOn = '1970-01-02 00:00:00.000'

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

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @StartedOn VarChar(23) -- AnsiString
SET     @StartedOn = '1970-01-02 00:02:05.250'
DECLARE @FinishedOn VarChar(23) -- AnsiString
SET     @FinishedOn = '1970-01-02 00:00:00.000'

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

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[r].[StartedOn],
	[r].[FinishedOn]
FROM
	[EventRow] [r]
ORDER BY
	[r].[Id]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	CAST(CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000 / 10000 % 1000 AS INTEGER)
FROM
	[EventRow] [r]
ORDER BY
	[r].[Id]

