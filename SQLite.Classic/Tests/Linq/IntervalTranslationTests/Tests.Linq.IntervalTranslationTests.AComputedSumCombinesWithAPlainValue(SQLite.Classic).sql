-- SQLite.Classic SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InSeconds Integer -- Int64
SET     @InSeconds = 5400
DECLARE @InTicks Integer -- Int64
SET     @InTicks = 54000000000
DECLARE @Undeclared Integer -- Int64
SET     @Undeclared = 54000000000
DECLARE @UndeclaredSeconds Integer -- Int64
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

-- SQLite.Classic SQLite
DECLARE @Ticks Integer -- Int64
SET     @Ticks = 3000000000

SELECT
	CAST(CAST([r].[InSeconds] * 10000000 + [r].[InTicks] AS INTEGER) + @Ticks AS INTEGER),
	CAST(@Ticks + CAST([r].[InSeconds] * 10000000 + [r].[InTicks] AS INTEGER) AS INTEGER),
	CAST(CAST([r].[InSeconds] * 10000000 + [r].[InTicks] AS INTEGER) - @Ticks AS INTEGER)
FROM
	[DurationRow] [r]
LIMIT 2

-- SQLite.Classic SQLite
DECLARE @Ticks Integer -- Int64
SET     @Ticks = 108000000000

SELECT
	COUNT(*)
FROM
	[DurationRow] [r]
WHERE
	CAST([r].[InSeconds] * 10000000 + [r].[InTicks] AS INTEGER) = @Ticks

