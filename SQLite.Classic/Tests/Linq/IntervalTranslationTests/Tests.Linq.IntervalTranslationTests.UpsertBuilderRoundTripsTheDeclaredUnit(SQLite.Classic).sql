-- SQLite.Classic SQLite
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

-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @InSeconds  -- Int64
SET     @InSeconds = 4567
DECLARE @extra  -- Int64
SET     @extra = 18000000000
DECLARE @Undeclared  -- Int64
SET     @Undeclared = 45670000000
DECLARE @UndeclaredSeconds  -- Int64
SET     @UndeclaredSeconds = 4567

INSERT INTO [DurationRow] AS [t1]
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
	@extra,
	@Undeclared,
	@UndeclaredSeconds
)
ON CONFLICT ([Id]) DO UPDATE SET
	[InSeconds] = @InSeconds,
	[InTicks] = @extra,
	[Undeclared] = @Undeclared,
	[UndeclaredSeconds] = @UndeclaredSeconds

-- SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[InSeconds],
	[t1].[InTicks],
	[t1].[Undeclared],
	[t1].[UndeclaredSeconds]
FROM
	[DurationRow] [t1]
LIMIT 2

