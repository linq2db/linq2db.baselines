-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 183845
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 1838450000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 1838450000000
DECLARE @UndeclaredSeconds BigInt -- Int64
SET     @UndeclaredSeconds = 183845

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

-- SqlServer.2005
SELECT TOP (2)
	CAST(CAST([r].[InSeconds] AS BigInt) * 10000000 AS Float) / 36000000000,
	CAST(((CAST([r].[InSeconds] AS BigInt) * 10000000) / 36000000000) % 24 AS Int),
	CAST(CAST([r].[InTicks] AS BigInt) AS Float) / 600000000
FROM
	[DurationRow] [r]

