-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
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

-- Sybase.Managed Sybase
SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	DateAdd(millisecond, (([r].[InSeconds] * 10000000) % 10000000) / 10000, DateAdd(second, (([r].[InSeconds] * 10000000) % 864000000000) / 10000000, DateAdd(day, ([r].[InSeconds] * 10000000) / 864000000000, '2026-03-01 00:00:00.000'))) > '2026-03-01 01:00:00.000'

