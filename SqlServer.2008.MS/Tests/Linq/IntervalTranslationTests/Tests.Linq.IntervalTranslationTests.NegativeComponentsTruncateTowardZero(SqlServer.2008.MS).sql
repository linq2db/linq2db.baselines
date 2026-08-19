-- SqlServer.2008.MS SqlServer.2008
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

-- SqlServer.2008.MS SqlServer.2008
SELECT TOP (2)
	CAST([r].[InSeconds] / 86400 AS Int),
	CAST(([r].[InSeconds] / 3600) % 24 AS Int),
	CAST([r].[InSeconds] AS Float) / 3600
FROM
	[DurationRow] [r]

