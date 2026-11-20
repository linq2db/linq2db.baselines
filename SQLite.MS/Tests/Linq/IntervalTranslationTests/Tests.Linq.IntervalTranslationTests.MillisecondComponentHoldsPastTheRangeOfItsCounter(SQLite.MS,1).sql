-- SQLite.MS SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Text(23) -- DateTime
SET     @StartedOn = '1970-01-02 00:00:00.000'
DECLARE @FinishedOn Text(23) -- DateTime
SET     @FinishedOn = '1970-02-03 04:05:06.780'

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

-- SQLite.MS SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StartedOn Text(23) -- DateTime
SET     @StartedOn = '1970-01-02 00:00:00.000'
DECLARE @FinishedOn Text(23) -- DateTime
SET     @FinishedOn = '2045-06-05 04:03:02.340'

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

-- SQLite.MS SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @StartedOn Text(23) -- DateTime
SET     @StartedOn = '1970-01-02 00:00:00.000'
DECLARE @FinishedOn Text(23) -- DateTime
SET     @FinishedOn = '1970-01-02 00:02:05.250'

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

-- SQLite.MS SQLite
SELECT
	[r].[StartedOn],
	[r].[FinishedOn]
FROM
	[EventRow] [r]
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
SELECT
	CAST(CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000 / 10000 % 1000 AS INTEGER)
FROM
	[EventRow] [r]
ORDER BY
	[r].[Id]

