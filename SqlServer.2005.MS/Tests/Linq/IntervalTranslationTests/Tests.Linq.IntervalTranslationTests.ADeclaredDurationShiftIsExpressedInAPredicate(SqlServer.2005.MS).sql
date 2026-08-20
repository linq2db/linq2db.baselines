-- SqlServer.2005.MS SqlServer.2005
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

-- SqlServer.2005.MS SqlServer.2005
SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	DateAdd(millisecond, CAST((([r].[InSeconds] * 10000000) % 10000000) / 10000 AS Int), DateAdd(second, CAST((([r].[InSeconds] * 10000000) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(([r].[InSeconds] * 10000000) / 864000000000 AS Int), CAST('2026-03-01T00:00:00.000' AS DATETIME)))) > CAST('2026-03-01T01:00:00.000' AS DATETIME)

