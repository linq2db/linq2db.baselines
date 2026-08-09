-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @InSeconds  -- Int64
SET     @InSeconds = 183845
DECLARE @InTicks  -- Int64
SET     @InTicks = 1838450000000
DECLARE @Undeclared  -- Int64
SET     @Undeclared = 1838450000000
DECLARE @UndeclaredSeconds  -- Int64
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

-- SQLite.MS SQLite
SELECT
	CAST(CAST([r].[InSeconds] AS INTEGER) * 10000000 AS Float) / 36000000000,
	CAST(((CAST([r].[InSeconds] AS INTEGER) * 10000000) / 36000000000) % 24 AS INTEGER),
	CAST(CAST([r].[InTicks] AS INTEGER) AS Float) / 600000000
FROM
	[DurationRow] [r]
LIMIT 2

