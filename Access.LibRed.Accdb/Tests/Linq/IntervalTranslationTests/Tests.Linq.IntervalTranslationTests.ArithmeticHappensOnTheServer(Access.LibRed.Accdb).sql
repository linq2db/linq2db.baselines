-- Access.LibRed.Accdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 2
	[r].[InSeconds] / 3600,
	Fix([r].[InSeconds] / 3600) MOD 24,
	[r].[InTicks] / 600000000
FROM
	[DurationRow] [r]

