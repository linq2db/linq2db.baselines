-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	DateAdd('ms', Fix(([r].[InSeconds] * 10000000 MOD 10000000) / 10000), DateAdd('s', Fix(([r].[InSeconds] * 10000000 MOD 864000000000) / 10000000), DateAdd('d', Fix(([r].[InSeconds] * 10000000) / 864000000000), #2026-03-01#))) > #2026-03-01 01:00:00#

