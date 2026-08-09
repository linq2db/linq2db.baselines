-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InSeconds VarChar -- AnsiString
SET     @InSeconds = 900
DECLARE @InTicks VarChar -- AnsiString
SET     @InTicks = 9000000000
DECLARE @Undeclared VarChar -- AnsiString
SET     @Undeclared = 9000000000
DECLARE @UndeclaredSeconds VarChar -- AnsiString
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
SET     @InSeconds = 1800
DECLARE @InTicks VarChar -- AnsiString
SET     @InTicks = 18000000000
DECLARE @Undeclared VarChar -- AnsiString
SET     @Undeclared = 18000000000
DECLARE @UndeclaredSeconds VarChar -- AnsiString
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
SET     @InSeconds = 2700
DECLARE @InTicks VarChar -- AnsiString
SET     @InTicks = 27000000000
DECLARE @Undeclared VarChar -- AnsiString
SET     @Undeclared = 27000000000
DECLARE @UndeclaredSeconds VarChar -- AnsiString
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
	?,
	?,
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
DECLARE @present VarChar -- AnsiString
SET     @present = 1800

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] > ?
ORDER BY
	[r].[Id]

-- Access.Ace.Odbc AccessODBC
DECLARE @present VarChar -- AnsiString
SET     @present = 18000000000

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InTicks] > ?
ORDER BY
	[r].[Id]

-- Access.Ace.Odbc AccessODBC
DECLARE @present VarChar -- AnsiString
SET     @present = 1800

SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] = ?

-- Access.Ace.Odbc AccessODBC
SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	1 = 0

-- Access.Ace.Odbc AccessODBC
SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	1 = 0

