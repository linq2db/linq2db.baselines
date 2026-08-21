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
SELECT TOP (2)
	DateAdd(millisecond, CAST((([r].[InSeconds] * 10000000) % 10000000) / 10000 AS Int), DateAdd(second, CAST((([r].[InSeconds] * 10000000) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(([r].[InSeconds] * 10000000) / 864000000000 AS Int), CAST('2026-03-01T00:00:00.000' AS DATETIME)))),
	DateAdd(millisecond, CAST(((([r].[InSeconds] * 10000000) * -1) % 10000000) / 10000 AS Int), DateAdd(second, CAST(((([r].[InSeconds] * 10000000) * -1) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST((([r].[InSeconds] * 10000000) * -1) / 864000000000 AS Int), CAST('2026-03-01T00:00:00.000' AS DATETIME)))),
	DateAdd(millisecond, CAST(([r].[InTicks] % 10000000) / 10000 AS Int), DateAdd(second, CAST(([r].[InTicks] % 864000000000) / 10000000 AS Int), DateAdd(day, CAST([r].[InTicks] / 864000000000 AS Int), CAST('2026-03-01T00:00:00.000' AS DATETIME))))
FROM
	[DurationRow] [r]

