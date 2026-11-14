-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @InSeconds  -- Int64
SET     @InSeconds = 1
DECLARE @InTicks  -- Int64
SET     @InTicks = 12345670
DECLARE @Undeclared  -- Int64
SET     @Undeclared = 12345670
DECLARE @UndeclaredSeconds  -- Int64
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 2
	Fix([r].[InTicks] / 10000) MOD 1000,
	Fix([r].[InTicks] / 10) MOD 1000
FROM
	[DurationRow] [r]

