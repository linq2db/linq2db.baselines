-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 5400
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 54000000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 54000000000
DECLARE @UndeclaredSeconds BigInt -- Int64
SET     @UndeclaredSeconds = 5400

INSERT INTO [DurationRow]
(
	[Id],
	[InSeconds],
	[InTicks],
	[Undeclared],
	[UndeclaredSeconds]
)
VALUES
(
	@Id,
	@InSeconds,
	@InTicks,
	@Undeclared,
	@UndeclaredSeconds
)

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 3000000000

SELECT TOP (2)
	CAST(CAST([r].[InSeconds] * 10000000 + [r].[InTicks] AS BigInt) + @Ticks AS BigInt),
	CAST(@Ticks + CAST([r].[InSeconds] * 10000000 + [r].[InTicks] AS BigInt) AS BigInt),
	CAST(CAST([r].[InSeconds] * 10000000 + [r].[InTicks] AS BigInt) - @Ticks AS BigInt)
FROM
	[DurationRow] [r]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 108000000000

SELECT
	COUNT(*)
FROM
	[DurationRow] [r]
WHERE
	CAST([r].[InSeconds] * 10000000 + [r].[InTicks] AS BigInt) = @Ticks

