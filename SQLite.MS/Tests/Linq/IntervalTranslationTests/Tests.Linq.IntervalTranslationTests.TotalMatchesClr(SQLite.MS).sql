-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @InSeconds  -- Int64
SET     @InSeconds = 5400
DECLARE @InTicks  -- Int64
SET     @InTicks = 54000000000
DECLARE @Undeclared  -- Int64
SET     @Undeclared = 54000000000
DECLARE @UndeclaredSeconds  -- Int64
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

-- SQLite.MS SQLite
SELECT
	CAST(CAST([r].[InSeconds] AS INTEGER) * 10000000 AS Float) / 36000000000,
	CAST(CAST([r].[InSeconds] AS INTEGER) * 10000000 AS Float) / 600000000,
	CAST(CAST([r].[InTicks] AS INTEGER) AS Float) / 36000000000
FROM
	[DurationRow] [r]
LIMIT 2

