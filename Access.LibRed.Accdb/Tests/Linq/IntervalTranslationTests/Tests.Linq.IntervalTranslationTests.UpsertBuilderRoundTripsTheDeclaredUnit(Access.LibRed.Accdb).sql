-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @InSeconds  -- Int64
SET     @InSeconds = 4567
DECLARE @InTicks  -- Int64
SET     @InTicks = 45670000000
DECLARE @Undeclared  -- Int64
SET     @Undeclared = 45670000000
DECLARE @UndeclaredSeconds  -- Int64
SET     @UndeclaredSeconds = 4567

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
DECLARE @InSeconds  -- Int64
SET     @InSeconds = 4567
DECLARE @extra  -- Int64
SET     @extra = 18000000000
DECLARE @Undeclared  -- Int64
SET     @Undeclared = 45670000000
DECLARE @UndeclaredSeconds  -- Int64
SET     @UndeclaredSeconds = 4567
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[DurationRow] [t1]
SET
	[t1].[InSeconds] = @InSeconds,
	[t1].[InTicks] = @extra,
	[t1].[Undeclared] = @Undeclared,
	[t1].[UndeclaredSeconds] = @UndeclaredSeconds
WHERE
	[t1].[Id] = @Id

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 2
	[t1].[Id],
	[t1].[InSeconds],
	[t1].[InTicks],
	[t1].[Undeclared],
	[t1].[UndeclaredSeconds]
FROM
	[DurationRow] [t1]

