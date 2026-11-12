-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @InSeconds  -- Int64
SET     @InSeconds = 900
DECLARE @InTicks  -- Int64
SET     @InTicks = 9000000000
DECLARE @Undeclared  -- Int64
SET     @Undeclared = 9000000000
DECLARE @UndeclaredSeconds  -- Int64
SET     @UndeclaredSeconds = 900

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
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @InSeconds  -- Int64
SET     @InSeconds = 1800
DECLARE @InTicks  -- Int64
SET     @InTicks = 18000000000
DECLARE @Undeclared  -- Int64
SET     @Undeclared = 18000000000
DECLARE @UndeclaredSeconds  -- Int64
SET     @UndeclaredSeconds = 1800

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
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @InSeconds  -- Int64
SET     @InSeconds = 2700
DECLARE @InTicks  -- Int64
SET     @InTicks = 27000000000
DECLARE @Undeclared  -- Int64
SET     @Undeclared = 27000000000
DECLARE @UndeclaredSeconds  -- Int64
SET     @UndeclaredSeconds = 2700

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
	[r].[InSeconds] IN (900, 2700)
ORDER BY
	[r].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InTicks] IN (9000000000, 27000000000)
ORDER BY
	[r].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[r].[InSeconds] IN (900, 2700)
FROM
	[DurationRow] [r]
ORDER BY
	[r].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @InSeconds  -- Int64
SET     @InSeconds = 1800

SELECT
	COUNT(*) > 0
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] = @InSeconds

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @InTicks  -- Int64
SET     @InTicks = 54000000000

SELECT
	COUNT(*) > 0
FROM
	[DurationRow] [r]
WHERE
	[r].[InTicks] = @InTicks

