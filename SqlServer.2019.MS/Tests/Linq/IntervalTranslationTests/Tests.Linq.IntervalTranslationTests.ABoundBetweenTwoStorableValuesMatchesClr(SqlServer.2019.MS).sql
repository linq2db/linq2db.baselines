-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 1
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 10000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 10000000
DECLARE @UndeclaredSeconds BigInt -- Int64
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

-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 2
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 20000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 20000000
DECLARE @UndeclaredSeconds BigInt -- Int64
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

-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 3
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 30000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 30000000
DECLARE @UndeclaredSeconds BigInt -- Int64
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

-- SqlServer.2019.MS SqlServer.2019
DECLARE @p BigInt -- Int64
SET     @p = 1

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] > @p
ORDER BY
	[r].[Id]

-- SqlServer.2019.MS SqlServer.2019
DECLARE @p BigInt -- Int64
SET     @p = 2

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] >= @p
ORDER BY
	[r].[Id]

-- SqlServer.2019.MS SqlServer.2019
DECLARE @p BigInt -- Int64
SET     @p = 2

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] < @p
ORDER BY
	[r].[Id]

-- SqlServer.2019.MS SqlServer.2019
DECLARE @p BigInt -- Int64
SET     @p = 1

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] <= @p
ORDER BY
	[r].[Id]

-- SqlServer.2019.MS SqlServer.2019
DECLARE @p BigInt -- Int64
SET     @p = 2
DECLARE @p_1 BigInt -- Int64
SET     @p_1 = 1

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] >= @p AND [r].[InSeconds] <= @p_1
ORDER BY
	[r].[Id]

-- SqlServer.2019.MS SqlServer.2019
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 15000000

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] * 10000000 <> @Ticks
ORDER BY
	[r].[Id]

-- SqlServer.2019.MS SqlServer.2019
DECLARE @p BigInt -- Int64
SET     @p = 1

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] > @p
ORDER BY
	[r].[Id]

-- SqlServer.2019.MS SqlServer.2019
DECLARE @p BigInt -- Int64
SET     @p = 1

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] <= @p
ORDER BY
	[r].[Id]

-- SqlServer.2019.MS SqlServer.2019
DECLARE @p BigInt -- Int64
SET     @p = 2
DECLARE @p_1 BigInt -- Int64
SET     @p_1 = 1

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] >= @p AND [r].[InSeconds] <= @p_1
ORDER BY
	[r].[Id]

-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 1
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 10000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 10000000
DECLARE @UndeclaredSeconds BigInt -- Int64
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

-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 2
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 20000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 20000000
DECLARE @UndeclaredSeconds BigInt -- Int64
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

-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 3
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 30000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 30000000
DECLARE @UndeclaredSeconds BigInt -- Int64
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

-- SqlServer.2019.MS SqlServer.2019
DECLARE @p BigInt -- Int64
SET     @p = 2

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] > @p
ORDER BY
	[r].[Id]

-- SqlServer.2019.MS SqlServer.2019
DECLARE @p BigInt -- Int64
SET     @p = 2

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] >= @p
ORDER BY
	[r].[Id]

-- SqlServer.2019.MS SqlServer.2019
DECLARE @p BigInt -- Int64
SET     @p = 2

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] < @p
ORDER BY
	[r].[Id]

-- SqlServer.2019.MS SqlServer.2019
DECLARE @p BigInt -- Int64
SET     @p = 2

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] <= @p
ORDER BY
	[r].[Id]

-- SqlServer.2019.MS SqlServer.2019
DECLARE @p BigInt -- Int64
SET     @p = 2
DECLARE @p_1 BigInt -- Int64
SET     @p_1 = 2

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] >= @p AND [r].[InSeconds] <= @p_1
ORDER BY
	[r].[Id]

-- SqlServer.2019.MS SqlServer.2019
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 20000000

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] * 10000000 <> @Ticks
ORDER BY
	[r].[Id]

-- SqlServer.2019.MS SqlServer.2019
DECLARE @p BigInt -- Int64
SET     @p = 2

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] > @p
ORDER BY
	[r].[Id]

-- SqlServer.2019.MS SqlServer.2019
DECLARE @p BigInt -- Int64
SET     @p = 2

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] <= @p
ORDER BY
	[r].[Id]

-- SqlServer.2019.MS SqlServer.2019
DECLARE @p BigInt -- Int64
SET     @p = 2
DECLARE @p_1 BigInt -- Int64
SET     @p_1 = 2

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] >= @p AND [r].[InSeconds] <= @p_1
ORDER BY
	[r].[Id]

