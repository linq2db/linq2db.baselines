-- SqlServer.2014.MS SqlServer.2014
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

-- SqlServer.2014.MS SqlServer.2014
SELECT TOP (2)
	DateAdd(nanosecond, CAST((([r].[InSeconds] * 10000000) % 10000000) * 100 AS Int), DateAdd(second, CAST((([r].[InSeconds] * 10000000) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(([r].[InSeconds] * 10000000) / 864000000000 AS Int), DATETIME2FROMPARTS(2026, 3, 1, 0, 0, 0, 0, 7)))),
	DateAdd(nanosecond, CAST(((([r].[InSeconds] * 10000000) * -1) % 10000000) * 100 AS Int), DateAdd(second, CAST(((([r].[InSeconds] * 10000000) * -1) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST((([r].[InSeconds] * 10000000) * -1) / 864000000000 AS Int), DATETIME2FROMPARTS(2026, 3, 1, 0, 0, 0, 0, 7)))),
	DateAdd(nanosecond, CAST(([r].[InTicks] % 10000000) * 100 AS Int), DateAdd(second, CAST(([r].[InTicks] % 864000000000) / 10000000 AS Int), DateAdd(day, CAST([r].[InTicks] / 864000000000 AS Int), DATETIME2FROMPARTS(2026, 3, 1, 0, 0, 0, 0, 7))))
FROM
	[DurationRow] [r]

