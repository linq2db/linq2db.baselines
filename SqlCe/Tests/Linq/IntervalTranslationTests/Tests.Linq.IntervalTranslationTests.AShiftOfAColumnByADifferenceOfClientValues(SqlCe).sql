-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = '2026-01-01 10:00:00.000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = '2026-01-01 12:00:00.000'

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

-- SqlCe
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT TOP (2)
	DateAdd(millisecond, (CAST(@Ticks AS BigInt) % CAST(10000000 AS BigInt)) / CAST(10000 AS BigInt), DateAdd(second, (CAST(@Ticks AS BigInt) % CAST(864000000000 AS BigInt)) / CAST(10000000 AS BigInt), DateAdd(day, CAST(@Ticks AS BigInt) / CAST(864000000000 AS BigInt), [r].[StartedOn])))
FROM
	[EventRow] [r]

-- SqlCe
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT TOP (2)
	DateAdd(millisecond, ((CAST(@Ticks AS BigInt) * -1) % CAST(10000000 AS BigInt)) / CAST(10000 AS BigInt), DateAdd(second, ((CAST(@Ticks AS BigInt) * -1) % CAST(864000000000 AS BigInt)) / CAST(10000000 AS BigInt), DateAdd(day, (CAST(@Ticks AS BigInt) * -1) / CAST(864000000000 AS BigInt), [r].[FinishedOn])))
FROM
	[EventRow] [r]

-- SqlCe
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	DateAdd(millisecond, (CAST(@Ticks AS BigInt) % CAST(10000000 AS BigInt)) / CAST(10000 AS BigInt), DateAdd(second, (CAST(@Ticks AS BigInt) % CAST(864000000000 AS BigInt)) / CAST(10000000 AS BigInt), DateAdd(day, CAST(@Ticks AS BigInt) / CAST(864000000000 AS BigInt), [r].[StartedOn]))) < [r].[FinishedOn]

-- SqlCe
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	DateAdd(millisecond, ((CAST(@Ticks AS BigInt) * -1) % CAST(10000000 AS BigInt)) / CAST(10000 AS BigInt), DateAdd(second, ((CAST(@Ticks AS BigInt) * -1) % CAST(864000000000 AS BigInt)) / CAST(10000000 AS BigInt), DateAdd(day, (CAST(@Ticks AS BigInt) * -1) / CAST(864000000000 AS BigInt), [r].[FinishedOn]))) > DateAdd(hour, 1, [r].[StartedOn])

