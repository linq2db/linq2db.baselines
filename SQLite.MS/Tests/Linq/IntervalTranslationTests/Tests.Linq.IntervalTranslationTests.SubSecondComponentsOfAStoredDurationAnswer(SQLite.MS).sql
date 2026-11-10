-- SQLite.MS SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InSeconds Integer -- Int64
SET     @InSeconds = 1
DECLARE @InTicks Integer -- Int64
SET     @InTicks = 12345670
DECLARE @Undeclared Integer -- Int64
SET     @Undeclared = 12345670
DECLARE @UndeclaredSeconds Integer -- Int64
SET     @UndeclaredSeconds = 1

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
	CAST(([r].[InTicks] / 10000) % 1000 AS INTEGER),
	CAST(([r].[InTicks] / 10) % 1000 AS INTEGER)
FROM
	[DurationRow] [r]
LIMIT 2

