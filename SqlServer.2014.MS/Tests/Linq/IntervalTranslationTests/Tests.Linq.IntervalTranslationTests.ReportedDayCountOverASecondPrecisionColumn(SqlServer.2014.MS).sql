-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = DATETIME2FROMPARTS(2026, 6, 1, 10, 0, 0, 0, 7)
DECLARE @FinishedOn DateTime
SET     @FinishedOn = DATETIME2FROMPARTS(2026, 6, 1, 10, 0, 0, 0, 7)
DECLARE @OpenedOn Date
SET     @OpenedOn = DATETIME2FROMPARTS(2026, 6, 1, 0, 0, 0, 0, 7)
DECLARE @ClosedOn Date
SET     @ClosedOn = DATETIME2FROMPARTS(2026, 6, 1, 0, 0, 0, 0, 7)

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

-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @StartedOn DateTime
SET     @StartedOn = DATETIME2FROMPARTS(2026, 5, 25, 10, 0, 0, 0, 7)
DECLARE @FinishedOn DateTime
SET     @FinishedOn = DATETIME2FROMPARTS(2026, 5, 25, 10, 0, 0, 0, 7)
DECLARE @OpenedOn Date
SET     @OpenedOn = DATETIME2FROMPARTS(2026, 5, 25, 0, 0, 0, 0, 7)
DECLARE @ClosedOn Date
SET     @ClosedOn = DATETIME2FROMPARTS(2026, 5, 25, 0, 0, 0, 0, 7)

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

-- SqlServer.2014.MS SqlServer.2014
SELECT TOP (2)
	CAST(Floor(CAST((CAST(DateDiff(day, MIN([grp].[StartedOn]), MAX([grp].[StartedOn])) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, MIN([grp].[StartedOn]), MAX([grp].[StartedOn])) AS BigInt) AS Int), MIN([grp].[StartedOn])) AS DateTime2), MAX([grp].[StartedOn])) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, MIN([grp].[StartedOn]), MAX([grp].[StartedOn])) AS BigInt) AS Int), MIN([grp].[StartedOn])) AS DateTime2), MAX([grp].[StartedOn])) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, MIN([grp].[StartedOn]), MAX([grp].[StartedOn])) AS BigInt) AS Int), MIN([grp].[StartedOn])) AS DateTime2)), MAX([grp].[StartedOn])) AS BigInt) / 100 AS Float) / 864000000000) AS Int) + 1
FROM
	[CoarseEventRow] [grp]

