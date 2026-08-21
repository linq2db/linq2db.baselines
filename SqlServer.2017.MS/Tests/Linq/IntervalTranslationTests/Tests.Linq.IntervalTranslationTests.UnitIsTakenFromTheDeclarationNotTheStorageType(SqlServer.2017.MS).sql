-- SqlServer.2017.MS SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 10800
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 108000000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 108000000000
DECLARE @UndeclaredSeconds BigInt -- Int64
SET     @UndeclaredSeconds = 10800

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
SELECT TOP (2)
	CAST([r].[InSeconds] AS Float) / 3600,
	CAST([r].[InTicks] AS Float) / 36000000000
FROM
	[DurationRow] [r]

