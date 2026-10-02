-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @DueOn DateTime
SET     @DueOn = '2026-01-01 10:00:00.000'
DECLARE @StartedOn DateTime
SET     @StartedOn = '2026-01-01 10:00:00.000'

INSERT INTO [OptionalDueRow]
(
	[Id],
	[DueOn],
	[StartedOn]
)
VALUES
(
	@Id,
	@DueOn,
	@StartedOn
)

-- Sybase.Managed Sybase
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT TOP 2
	DateAdd(millisecond, (CAST(@Ticks AS BigInt) % 10000000) / 10000, DateAdd(second, (CAST(@Ticks AS BigInt) % 864000000000) / 10000000, DateAdd(day, CAST(@Ticks AS BigInt) / 864000000000, [r].[DueOn])))
FROM
	[OptionalDueRow] [r]

-- Sybase.Managed Sybase
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT TOP 2
	DateAdd(millisecond, (CAST(@Ticks AS BigInt) % 10000000) / 10000, DateAdd(second, (CAST(@Ticks AS BigInt) % 864000000000) / 10000000, DateAdd(day, CAST(@Ticks AS BigInt) / 864000000000, [r].[StartedOn])))
FROM
	[OptionalDueRow] [r]

-- Sybase.Managed Sybase
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT TOP 2
	DateAdd(millisecond, ((CAST(@Ticks AS BigInt) * -1) % 10000000) / 10000, DateAdd(second, ((CAST(@Ticks AS BigInt) * -1) % 864000000000) / 10000000, DateAdd(day, (CAST(@Ticks AS BigInt) * -1) / 864000000000, [r].[DueOn])))
FROM
	[OptionalDueRow] [r]

-- Sybase.Managed Sybase
SELECT TOP 2
	DateAdd(millisecond, (CAST(NULL AS BigInt) % 10000000) / 10000, DateAdd(second, (CAST(NULL AS BigInt) % 864000000000) / 10000000, DateAdd(day, CAST(NULL AS BigInt) / 864000000000, [r].[StartedOn])))
FROM
	[OptionalDueRow] [r]

-- Sybase.Managed Sybase
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	[r].[Id]
FROM
	[OptionalDueRow] [r]
WHERE
	DateAdd(millisecond, (CAST(@Ticks AS BigInt) % 10000000) / 10000, DateAdd(second, (CAST(@Ticks AS BigInt) % 864000000000) / 10000000, DateAdd(day, CAST(@Ticks AS BigInt) / 864000000000, [r].[DueOn]))) > DateAdd(hour, 1, [r].[StartedOn])

-- Sybase.Managed Sybase
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	[r].[Id]
FROM
	[OptionalDueRow] [r]
WHERE
	DateAdd(millisecond, (CAST(@Ticks AS BigInt) % 10000000) / 10000, DateAdd(second, (CAST(@Ticks AS BigInt) % 864000000000) / 10000000, DateAdd(day, CAST(@Ticks AS BigInt) / 864000000000, [r].[StartedOn]))) < DateAdd(hour, 1, [r].[StartedOn])

