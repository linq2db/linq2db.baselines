-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @InSeconds  -- Int64
SET     @InSeconds = 1
DECLARE @InTicks  -- Int64
SET     @InTicks = 10000000
DECLARE @Undeclared  -- Int64
SET     @Undeclared = 10000000
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
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @InSeconds  -- Int64
SET     @InSeconds = 2
DECLARE @InTicks  -- Int64
SET     @InTicks = 20000000
DECLARE @Undeclared  -- Int64
SET     @Undeclared = 20000000
DECLARE @UndeclaredSeconds  -- Int64
SET     @UndeclaredSeconds = 2

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
SET     @InSeconds = 3
DECLARE @InTicks  -- Int64
SET     @InTicks = 30000000
DECLARE @Undeclared  -- Int64
SET     @Undeclared = 30000000
DECLARE @UndeclaredSeconds  -- Int64
SET     @UndeclaredSeconds = 3

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
DECLARE @p  -- Int64
SET     @p = 1

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] > @p
ORDER BY
	[r].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Value Decimal(1, 0)
SET     @Value = -2

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] >= -@Value
ORDER BY
	[r].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Value Decimal(1, 0)
SET     @Value = -2

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] < -@Value
ORDER BY
	[r].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @p  -- Int64
SET     @p = 1

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] <= @p
ORDER BY
	[r].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Value Decimal(1, 0)
SET     @Value = -2
DECLARE @p  -- Int64
SET     @p = 1

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] >= -@Value AND [r].[InSeconds] <= @p
ORDER BY
	[r].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Ticks  -- Int64
SET     @Ticks = 15000000

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] * 10000000 <> @Ticks
ORDER BY
	[r].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @p  -- Int64
SET     @p = 1

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] > @p
ORDER BY
	[r].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @p  -- Int64
SET     @p = 1

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] <= @p
ORDER BY
	[r].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Value Decimal(1, 0)
SET     @Value = -2
DECLARE @p  -- Int64
SET     @p = 1

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] >= -@Value AND [r].[InSeconds] <= @p
ORDER BY
	[r].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @InSeconds  -- Int64
SET     @InSeconds = 1
DECLARE @InTicks  -- Int64
SET     @InTicks = 10000000
DECLARE @Undeclared  -- Int64
SET     @Undeclared = 10000000
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
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @InSeconds  -- Int64
SET     @InSeconds = 2
DECLARE @InTicks  -- Int64
SET     @InTicks = 20000000
DECLARE @Undeclared  -- Int64
SET     @Undeclared = 20000000
DECLARE @UndeclaredSeconds  -- Int64
SET     @UndeclaredSeconds = 2

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
SET     @InSeconds = 3
DECLARE @InTicks  -- Int64
SET     @InTicks = 30000000
DECLARE @Undeclared  -- Int64
SET     @Undeclared = 30000000
DECLARE @UndeclaredSeconds  -- Int64
SET     @UndeclaredSeconds = 3

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
DECLARE @p  -- Int64
SET     @p = 2

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] > @p
ORDER BY
	[r].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Value Decimal(1, 0)
SET     @Value = -2

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] >= -@Value
ORDER BY
	[r].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Value Decimal(1, 0)
SET     @Value = -2

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] < -@Value
ORDER BY
	[r].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @p  -- Int64
SET     @p = 2

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] <= @p
ORDER BY
	[r].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Value Decimal(1, 0)
SET     @Value = -2
DECLARE @p  -- Int64
SET     @p = 2

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] >= -@Value AND [r].[InSeconds] <= @p
ORDER BY
	[r].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Ticks  -- Int64
SET     @Ticks = 20000000

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] * 10000000 <> @Ticks
ORDER BY
	[r].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @p  -- Int64
SET     @p = 2

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] > @p
ORDER BY
	[r].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @p  -- Int64
SET     @p = 2

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] <= @p
ORDER BY
	[r].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Value Decimal(1, 0)
SET     @Value = -2
DECLARE @p  -- Int64
SET     @p = 2

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] >= -@Value AND [r].[InSeconds] <= @p
ORDER BY
	[r].[Id]

