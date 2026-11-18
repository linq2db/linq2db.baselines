-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InSeconds Integer -- Int64
SET     @InSeconds = 183845
DECLARE @InTicks Integer -- Int64
SET     @InTicks = 1838450000000
DECLARE @Undeclared Integer -- Int64
SET     @Undeclared = 1838450000000
DECLARE @UndeclaredSeconds Integer -- Int64
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

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	CAST([r].[InSeconds] / 86400 AS INTEGER),
	CAST(([r].[InSeconds] / 3600) % 24 AS INTEGER),
	CAST(([r].[InSeconds] / 60) % 60 AS INTEGER),
	CAST([r].[InSeconds] % 60 AS INTEGER)
FROM
	[DurationRow] [r]
LIMIT 2

