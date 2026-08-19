-- SqlCe
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

-- SqlCe
SELECT TOP (2)
	CAST([r].[InSeconds] AS Float) / 3600,
	CAST(([r].[InSeconds] / CAST(3600 AS BigInt)) % CAST(24 AS BigInt) AS Int),
	CAST([r].[InTicks] AS Float) / 600000000
FROM
	[DurationRow] [r]

