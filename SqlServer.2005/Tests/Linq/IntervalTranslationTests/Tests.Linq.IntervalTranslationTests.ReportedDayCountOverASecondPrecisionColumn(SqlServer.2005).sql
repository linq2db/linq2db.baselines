-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = CAST('2026-06-01T10:00:00.000' AS DATETIME)
DECLARE @FinishedOn DateTime
SET     @FinishedOn = CAST('2026-06-01T10:00:00.000' AS DATETIME)
DECLARE @OpenedOn DateTime
SET     @OpenedOn = CAST('2026-06-01T00:00:00.000' AS DATETIME)
DECLARE @ClosedOn DateTime
SET     @ClosedOn = CAST('2026-06-01T00:00:00.000' AS DATETIME)

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

-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @StartedOn DateTime
SET     @StartedOn = CAST('2026-05-25T10:00:00.000' AS DATETIME)
DECLARE @FinishedOn DateTime
SET     @FinishedOn = CAST('2026-05-25T10:00:00.000' AS DATETIME)
DECLARE @OpenedOn DateTime
SET     @OpenedOn = CAST('2026-05-25T00:00:00.000' AS DATETIME)
DECLARE @ClosedOn DateTime
SET     @ClosedOn = CAST('2026-05-25T00:00:00.000' AS DATETIME)

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

-- SqlServer.2005
SELECT TOP (2)
	CAST(Floor(CAST((CAST(DateDiff(day, MIN([grp].[StartedOn]), MAX([grp].[StartedOn])) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, MIN([grp].[StartedOn]), MAX([grp].[StartedOn])) AS BigInt) AS Int), MIN([grp].[StartedOn])), MAX([grp].[StartedOn])) AS BigInt) * 10000 AS Float) / 864000000000) AS Int) + 1
FROM
	[CoarseEventRow] [grp]

