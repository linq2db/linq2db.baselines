-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @InSeconds  -- Int64
SET     @InSeconds = 10800
DECLARE @InTicks  -- Int64
SET     @InTicks = 108000000000
DECLARE @Undeclared  -- Int64
SET     @Undeclared = 108000000000
DECLARE @UndeclaredSeconds  -- Int64
SET     @UndeclaredSeconds = 10800

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
SELECT TOP 2
	[r].[InSeconds] / 3600,
	[r].[InTicks] / 36000000000
FROM
	[DurationRow] [r]

