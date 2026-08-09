-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = -90000
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = -900000000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = -900000000000
DECLARE @UndeclaredSeconds BigInt -- Int64
SET     @UndeclaredSeconds = -90000

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

-- SqlServer.SA.MS SqlServer.2019
SELECT TOP (2)
	CAST((CAST([r].[InSeconds] AS BigInt) * 10000000) / 864000000000 AS Int),
	CAST(((CAST([r].[InSeconds] AS BigInt) * 10000000) / 36000000000) % 24 AS Int),
	CAST(CAST([r].[InSeconds] AS BigInt) * 10000000 AS Float) / 36000000000
FROM
	[DurationRow] [r]

