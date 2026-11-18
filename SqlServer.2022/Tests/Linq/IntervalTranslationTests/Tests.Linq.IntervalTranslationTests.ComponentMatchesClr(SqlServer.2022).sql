-- SqlServer.2022
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

-- SqlServer.2022
SELECT TOP (2)
	CAST([r].[InSeconds] / 86400 AS Int),
	CAST(([r].[InSeconds] / 3600) % 24 AS Int),
	CAST(([r].[InSeconds] / 60) % 60 AS Int),
	CAST([r].[InSeconds] % 60 AS Int)
FROM
	[DurationRow] [r]

