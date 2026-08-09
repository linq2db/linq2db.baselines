-- SqlServer.2017.MS SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 900
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 9000000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 9000000000
DECLARE @UndeclaredSeconds BigInt -- Int64
SET     @UndeclaredSeconds = 900

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

-- SqlServer.2017.MS SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 1800
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 18000000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 18000000000
DECLARE @UndeclaredSeconds BigInt -- Int64
SET     @UndeclaredSeconds = 1800

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

-- SqlServer.2017.MS SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 2700
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 27000000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 27000000000
DECLARE @UndeclaredSeconds BigInt -- Int64
SET     @UndeclaredSeconds = 2700

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

-- SqlServer.2017.MS SqlServer.2017
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 9000000000

SELECT
	[x].[Id],
	[x].[InSeconds],
	[x].[InTicks],
	[x].[Undeclared],
	[x].[UndeclaredSeconds]
FROM
	[DurationRow] [x]
WHERE
	CAST([x].[InSeconds] AS BigInt) * 10000000 = @Ticks

-- SqlServer.2017.MS SqlServer.2017
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 27000000000

SELECT
	[x].[Id],
	[x].[InSeconds],
	[x].[InTicks],
	[x].[Undeclared],
	[x].[UndeclaredSeconds]
FROM
	[DurationRow] [x]
WHERE
	CAST([x].[InSeconds] AS BigInt) * 10000000 = @Ticks

-- SqlServer.2017.MS SqlServer.2017
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 9000000000

SELECT
	[x].[Id],
	[x].[InSeconds],
	[x].[InTicks],
	[x].[Undeclared],
	[x].[UndeclaredSeconds]
FROM
	[DurationRow] [x]
WHERE
	CAST([x].[InSeconds] AS BigInt) * 10000000 = @Ticks

-- SqlServer.2017.MS SqlServer.2017
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 27000000000

SELECT
	[x].[Id],
	[x].[InSeconds],
	[x].[InTicks],
	[x].[Undeclared],
	[x].[UndeclaredSeconds]
FROM
	[DurationRow] [x]
WHERE
	CAST([x].[InSeconds] AS BigInt) * 10000000 = @Ticks

