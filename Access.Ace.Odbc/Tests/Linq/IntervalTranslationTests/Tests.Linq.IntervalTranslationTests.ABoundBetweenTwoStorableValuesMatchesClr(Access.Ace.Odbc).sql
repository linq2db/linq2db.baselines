-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InSeconds VarChar -- AnsiString
SET     @InSeconds = 1
DECLARE @InTicks VarChar -- AnsiString
SET     @InTicks = 10000000
DECLARE @Undeclared VarChar -- AnsiString
SET     @Undeclared = 10000000
DECLARE @UndeclaredSeconds VarChar -- AnsiString
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
	?,
	?,
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @InSeconds VarChar -- AnsiString
SET     @InSeconds = 2
DECLARE @InTicks VarChar -- AnsiString
SET     @InTicks = 20000000
DECLARE @Undeclared VarChar -- AnsiString
SET     @Undeclared = 20000000
DECLARE @UndeclaredSeconds VarChar -- AnsiString
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
	?,
	?,
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @InSeconds VarChar -- AnsiString
SET     @InSeconds = 3
DECLARE @InTicks VarChar -- AnsiString
SET     @InTicks = 30000000
DECLARE @Undeclared VarChar -- AnsiString
SET     @Undeclared = 30000000
DECLARE @UndeclaredSeconds VarChar -- AnsiString
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
	?,
	?,
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] > ?
ORDER BY
	[r].[Id]

-- Access.Ace.Odbc AccessODBC
DECLARE @Value VarChar(1, 0) -- AnsiString
SET     @Value = -2

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] >= -?
ORDER BY
	[r].[Id]

-- Access.Ace.Odbc AccessODBC
DECLARE @Value VarChar(1, 0) -- AnsiString
SET     @Value = -2

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] < -?
ORDER BY
	[r].[Id]

-- Access.Ace.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] <= ?
ORDER BY
	[r].[Id]

-- Access.Ace.Odbc AccessODBC
DECLARE @Value VarChar(1, 0) -- AnsiString
SET     @Value = -2
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] >= -? AND [r].[InSeconds] <= ?
ORDER BY
	[r].[Id]

-- Access.Ace.Odbc AccessODBC
DECLARE @Ticks Int -- Int32
SET     @Ticks = 15000000

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] * 10000000 <> ?
ORDER BY
	[r].[Id]

-- Access.Ace.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] > ?
ORDER BY
	[r].[Id]

-- Access.Ace.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] <= ?
ORDER BY
	[r].[Id]

-- Access.Ace.Odbc AccessODBC
DECLARE @Value VarChar(1, 0) -- AnsiString
SET     @Value = -2
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] >= -? AND [r].[InSeconds] <= ?
ORDER BY
	[r].[Id]

-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InSeconds VarChar -- AnsiString
SET     @InSeconds = 1
DECLARE @InTicks VarChar -- AnsiString
SET     @InTicks = 10000000
DECLARE @Undeclared VarChar -- AnsiString
SET     @Undeclared = 10000000
DECLARE @UndeclaredSeconds VarChar -- AnsiString
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
	?,
	?,
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @InSeconds VarChar -- AnsiString
SET     @InSeconds = 2
DECLARE @InTicks VarChar -- AnsiString
SET     @InTicks = 20000000
DECLARE @Undeclared VarChar -- AnsiString
SET     @Undeclared = 20000000
DECLARE @UndeclaredSeconds VarChar -- AnsiString
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
	?,
	?,
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @InSeconds VarChar -- AnsiString
SET     @InSeconds = 3
DECLARE @InTicks VarChar -- AnsiString
SET     @InTicks = 30000000
DECLARE @Undeclared VarChar -- AnsiString
SET     @Undeclared = 30000000
DECLARE @UndeclaredSeconds VarChar -- AnsiString
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
	?,
	?,
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] > ?
ORDER BY
	[r].[Id]

-- Access.Ace.Odbc AccessODBC
DECLARE @Value VarChar(1, 0) -- AnsiString
SET     @Value = -2

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] >= -?
ORDER BY
	[r].[Id]

-- Access.Ace.Odbc AccessODBC
DECLARE @Value VarChar(1, 0) -- AnsiString
SET     @Value = -2

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] < -?
ORDER BY
	[r].[Id]

-- Access.Ace.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] <= ?
ORDER BY
	[r].[Id]

-- Access.Ace.Odbc AccessODBC
DECLARE @Value VarChar(1, 0) -- AnsiString
SET     @Value = -2
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] >= -? AND [r].[InSeconds] <= ?
ORDER BY
	[r].[Id]

-- Access.Ace.Odbc AccessODBC
DECLARE @Ticks Int -- Int32
SET     @Ticks = 20000000

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] * 10000000 <> ?
ORDER BY
	[r].[Id]

-- Access.Ace.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] > ?
ORDER BY
	[r].[Id]

-- Access.Ace.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] <= ?
ORDER BY
	[r].[Id]

-- Access.Ace.Odbc AccessODBC
DECLARE @Value VarChar(1, 0) -- AnsiString
SET     @Value = -2
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] >= -? AND [r].[InSeconds] <= ?
ORDER BY
	[r].[Id]

