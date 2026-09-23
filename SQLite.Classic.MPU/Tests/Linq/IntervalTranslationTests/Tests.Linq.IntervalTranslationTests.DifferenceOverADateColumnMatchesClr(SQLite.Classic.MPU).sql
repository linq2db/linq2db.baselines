-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn VarChar(23) -- AnsiString
SET     @StartedOn = '2026-06-01 10:00:00.000'
DECLARE @FinishedOn VarChar(23) -- AnsiString
SET     @FinishedOn = '2026-06-12 10:00:00.000'
DECLARE @OpenedOn VarChar(23) -- AnsiString
SET     @OpenedOn = '2026-06-01 00:00:00.000'
DECLARE @ClosedOn VarChar(23) -- AnsiString
SET     @ClosedOn = '2026-06-12 00:00:00.000'

INSERT INTO [CoarseEventRow]
(
	[Id],
	[StartedOn],
	[FinishedOn],
	[OpenedOn],
	[ClosedOn]
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn,
	@OpenedOn,
	@ClosedOn
)

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[r].[OpenedOn],
	[r].[ClosedOn]
FROM
	[CoarseEventRow] [r]
LIMIT 2

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	CAST(Round((JulianDay([r].[ClosedOn]) - JulianDay([r].[OpenedOn])) * 86400000) AS INTEGER) * 10000
FROM
	[CoarseEventRow] [r]
LIMIT 2

