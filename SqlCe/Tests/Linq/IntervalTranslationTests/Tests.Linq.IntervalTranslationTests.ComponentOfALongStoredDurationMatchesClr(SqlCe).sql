-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 3000000005
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 30000000050000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 30000000050000000
DECLARE @UndeclaredSeconds BigInt -- Int64
SET     @UndeclaredSeconds = 3000000005

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
	CAST([r].[InSeconds] / CAST(86400 AS BigInt) AS Int),
	CAST(([r].[InSeconds] / CAST(3600 AS BigInt)) % CAST(24 AS BigInt) AS Int),
	CAST(([r].[InSeconds] / CAST(60 AS BigInt)) % CAST(60 AS BigInt) AS Int),
	CAST([r].[InSeconds] % CAST(60 AS BigInt) AS Int)
FROM
	[DurationRow] [r]

-- SqlCe
DECLARE @Seconds Int -- Int32
SET     @Seconds = 5

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	CAST([r].[InSeconds] % CAST(60 AS BigInt) AS Int) = @Seconds

