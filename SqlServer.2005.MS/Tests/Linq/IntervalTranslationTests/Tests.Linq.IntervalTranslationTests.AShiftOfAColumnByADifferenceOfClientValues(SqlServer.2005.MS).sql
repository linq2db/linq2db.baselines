-- SqlServer.2005.MS SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = CAST('2026-01-01T10:00:00.000' AS DATETIME)
DECLARE @FinishedOn DateTime
SET     @FinishedOn = CAST('2026-01-01T12:00:00.000' AS DATETIME)

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

-- SqlServer.2005.MS SqlServer.2005
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT TOP (2)
	DateAdd(millisecond, CAST((CAST(@Ticks AS BigInt) % 10000000) / 10000 AS Int), DateAdd(second, CAST((CAST(@Ticks AS BigInt) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(CAST(@Ticks AS BigInt) / 864000000000 AS Int), CAST([r].[StartedOn] AS DateTime))))
FROM
	[EventRow] [r]

-- SqlServer.2005.MS SqlServer.2005
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT TOP (2)
	DateAdd(millisecond, CAST(((CAST(@Ticks AS BigInt) * -1) % 10000000) / 10000 AS Int), DateAdd(second, CAST(((CAST(@Ticks AS BigInt) * -1) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST((CAST(@Ticks AS BigInt) * -1) / 864000000000 AS Int), CAST([r].[FinishedOn] AS DateTime))))
FROM
	[EventRow] [r]

-- SqlServer.2005.MS SqlServer.2005
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	DateAdd(millisecond, CAST((CAST(@Ticks AS BigInt) % 10000000) / 10000 AS Int), DateAdd(second, CAST((CAST(@Ticks AS BigInt) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(CAST(@Ticks AS BigInt) / 864000000000 AS Int), CAST([r].[StartedOn] AS DateTime)))) < [r].[FinishedOn]

-- SqlServer.2005.MS SqlServer.2005
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	DateAdd(millisecond, CAST(((CAST(@Ticks AS BigInt) * -1) % 10000000) / 10000 AS Int), DateAdd(second, CAST(((CAST(@Ticks AS BigInt) * -1) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST((CAST(@Ticks AS BigInt) * -1) / 864000000000 AS Int), CAST([r].[FinishedOn] AS DateTime)))) > DateAdd(hour, 1, [r].[StartedOn])

