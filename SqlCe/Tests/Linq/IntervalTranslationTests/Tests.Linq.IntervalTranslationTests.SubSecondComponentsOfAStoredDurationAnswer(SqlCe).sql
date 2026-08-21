-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 1
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 12345670
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 12345670
DECLARE @UndeclaredSeconds BigInt -- Int64
SET     @UndeclaredSeconds = 1

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
	CAST(([r].[InTicks] / CAST(10000 AS BigInt)) % CAST(1000 AS BigInt) AS Int),
	CAST(([r].[InTicks] / CAST(10 AS BigInt)) % CAST(1000 AS BigInt) AS Int)
FROM
	[DurationRow] [r]

