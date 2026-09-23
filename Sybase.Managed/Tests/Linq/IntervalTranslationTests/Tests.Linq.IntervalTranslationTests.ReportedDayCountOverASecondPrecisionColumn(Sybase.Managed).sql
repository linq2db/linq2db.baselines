-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = '2026-06-01 10:00:00.000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = '2026-06-01 10:00:00.000'
DECLARE @OpenedOn Date
SET     @OpenedOn = '2026-06-01 00:00:00.000'
DECLARE @ClosedOn Date
SET     @ClosedOn = '2026-06-01 00:00:00.000'

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

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StartedOn DateTime
SET     @StartedOn = '2026-05-25 10:00:00.000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = '2026-05-25 10:00:00.000'
DECLARE @OpenedOn Date
SET     @OpenedOn = '2026-05-25 00:00:00.000'
DECLARE @ClosedOn Date
SET     @ClosedOn = '2026-05-25 00:00:00.000'

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

-- Sybase.Managed Sybase
SELECT TOP 2
	CAST(CAST((CAST(DateDiff(day, MIN([grp].[StartedOn]), MAX([grp].[StartedOn])) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, MIN([grp].[StartedOn]), MAX([grp].[StartedOn])) AS BigInt), MIN([grp].[StartedOn])), MAX([grp].[StartedOn])) AS BigInt) * 10000 AS Float) / 864000000000 AS Int) + 1
FROM
	[CoarseEventRow] [grp]

