-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
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

-- Sybase.Managed Sybase
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT TOP 2
	DateAdd(millisecond, (CAST(@Ticks AS BigInt) % 10000000) / 10000, DateAdd(second, (CAST(@Ticks AS BigInt) % 864000000000) / 10000000, DateAdd(day, CAST(@Ticks AS BigInt) / 864000000000, [r].[StartedOn])))
FROM
	[EventRow] [r]

-- Sybase.Managed Sybase
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT TOP 2
	DateAdd(millisecond, ((CAST(@Ticks AS BigInt) * -1) % 10000000) / 10000, DateAdd(second, ((CAST(@Ticks AS BigInt) * -1) % 864000000000) / 10000000, DateAdd(day, (CAST(@Ticks AS BigInt) * -1) / 864000000000, [r].[FinishedOn])))
FROM
	[EventRow] [r]

-- Sybase.Managed Sybase
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	DateAdd(millisecond, (CAST(@Ticks AS BigInt) % 10000000) / 10000, DateAdd(second, (CAST(@Ticks AS BigInt) % 864000000000) / 10000000, DateAdd(day, CAST(@Ticks AS BigInt) / 864000000000, [r].[StartedOn]))) < [r].[FinishedOn]

-- Sybase.Managed Sybase
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	DateAdd(millisecond, ((CAST(@Ticks AS BigInt) * -1) % 10000000) / 10000, DateAdd(second, ((CAST(@Ticks AS BigInt) * -1) % 864000000000) / 10000000, DateAdd(day, (CAST(@Ticks AS BigInt) * -1) / 864000000000, [r].[FinishedOn]))) > DateAdd(hour, 1, [r].[StartedOn])

