-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Day Date
SET     @Day = DATETIME2FROMPARTS(2026, 3, 1, 0, 0, 0, 0, 7)
DECLARE @StartedOn DateTime2
SET     @StartedOn = DATETIME2FROMPARTS(2026, 1, 1, 10, 0, 0, 0, 7)
DECLARE @FinishedOn DateTime2
SET     @FinishedOn = DATETIME2FROMPARTS(2026, 1, 1, 15, 30, 0, 2500000, 7)

INSERT INTO [DatedEventRow]
(
	[Id],
	[Day],
	[StartedOn],
	[FinishedOn]
)
VALUES
(
	@Id,
	@Day,
	@StartedOn,
	@FinishedOn
)

-- SqlServer.2014.MS SqlServer.2014
SELECT TOP (2)
	DateAdd(nanosecond, CAST((((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2), [r].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2), [r].[FinishedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2)), [r].[FinishedOn]) AS BigInt) / 100) % 10000000) * 100 AS Int), DateAdd(second, CAST((((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2), [r].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2), [r].[FinishedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2)), [r].[FinishedOn]) AS BigInt) / 100) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2), [r].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2), [r].[FinishedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2)), [r].[FinishedOn]) AS BigInt) / 100) / 864000000000 AS Int), CAST([r].[Day] AS DateTime2))))
FROM
	[DatedEventRow] [r]

-- SqlServer.2014.MS SqlServer.2014
SELECT
	[r].[Id]
FROM
	[DatedEventRow] [r]
WHERE
	DateAdd(nanosecond, CAST((((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2), [r].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2), [r].[FinishedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2)), [r].[FinishedOn]) AS BigInt) / 100) % 10000000) * 100 AS Int), DateAdd(second, CAST((((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2), [r].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2), [r].[FinishedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2)), [r].[FinishedOn]) AS BigInt) / 100) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2), [r].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2), [r].[FinishedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2)), [r].[FinishedOn]) AS BigInt) / 100) / 864000000000 AS Int), CAST([r].[Day] AS DateTime2)))) > [r].[Day]

-- SqlServer.2014.MS SqlServer.2014
SELECT TOP (2)
	DateAdd(nanosecond, CAST((((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2), [r].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2), [r].[FinishedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2)), [r].[FinishedOn]) AS BigInt) / 100) % 10000000) * 100 AS Int), DateAdd(second, CAST((((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2), [r].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2), [r].[FinishedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2)), [r].[FinishedOn]) AS BigInt) / 100) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2), [r].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2), [r].[FinishedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2)), [r].[FinishedOn]) AS BigInt) / 100) / 864000000000 AS Int), CAST([r].[Day] AS DateTime2))))
FROM
	[DatedEventRow] [r]

-- SqlServer.2014.MS SqlServer.2014
SELECT
	[r].[Id]
FROM
	[DatedEventRow] [r]
WHERE
	DateAdd(nanosecond, CAST((((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2), [r].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2), [r].[FinishedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2)), [r].[FinishedOn]) AS BigInt) / 100) % 10000000) * 100 AS Int), DateAdd(second, CAST((((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2), [r].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2), [r].[FinishedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2)), [r].[FinishedOn]) AS BigInt) / 100) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2), [r].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2), [r].[FinishedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2)), [r].[FinishedOn]) AS BigInt) / 100) / 864000000000 AS Int), CAST([r].[Day] AS DateTime2)))) > [r].[Day]

