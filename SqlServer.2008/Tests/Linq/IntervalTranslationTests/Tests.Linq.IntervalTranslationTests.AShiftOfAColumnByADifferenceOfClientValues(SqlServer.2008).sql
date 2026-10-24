-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime2
SET     @StartedOn = CAST('2026-01-01T10:00:00.0000000' AS DATETIME2)
DECLARE @FinishedOn DateTime2
SET     @FinishedOn = CAST('2026-01-01T12:00:00.0000000' AS DATETIME2)

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

-- SqlServer.2008
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT TOP (2)
	DateAdd(nanosecond, CAST((CAST(@Ticks AS BigInt) % 10000000) * 100 AS Int), DateAdd(second, CAST((CAST(@Ticks AS BigInt) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(CAST(@Ticks AS BigInt) / 864000000000 AS Int), CAST([r].[StartedOn] AS DateTime2))))
FROM
	[EventRow] [r]

-- SqlServer.2008
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT TOP (2)
	DateAdd(nanosecond, CAST(((CAST(@Ticks AS BigInt) * -1) % 10000000) * 100 AS Int), DateAdd(second, CAST(((CAST(@Ticks AS BigInt) * -1) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST((CAST(@Ticks AS BigInt) * -1) / 864000000000 AS Int), CAST([r].[FinishedOn] AS DateTime2))))
FROM
	[EventRow] [r]

-- SqlServer.2008
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	DateAdd(nanosecond, CAST((CAST(@Ticks AS BigInt) % 10000000) * 100 AS Int), DateAdd(second, CAST((CAST(@Ticks AS BigInt) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(CAST(@Ticks AS BigInt) / 864000000000 AS Int), CAST([r].[StartedOn] AS DateTime2)))) < [r].[FinishedOn]

-- SqlServer.2008
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	DateAdd(nanosecond, CAST(((CAST(@Ticks AS BigInt) * -1) % 10000000) * 100 AS Int), DateAdd(second, CAST(((CAST(@Ticks AS BigInt) * -1) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST((CAST(@Ticks AS BigInt) * -1) / 864000000000 AS Int), CAST([r].[FinishedOn] AS DateTime2)))) > DateAdd(hour, 1, [r].[StartedOn])

