-- Access.Jet.Odbc AccessODBC
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

-- Access.Jet.Odbc AccessODBC
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

-- Access.Jet.Odbc AccessODBC
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

-- Access.Jet.Odbc AccessODBC
SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] IN (900, 2700)
ORDER BY
	[r].[Id]

-- Access.Jet.Odbc AccessODBC
SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InTicks] IN (9000000000, 27000000000)
ORDER BY
	[r].[Id]

-- Access.Jet.Odbc AccessODBC
SELECT
	[r].[InSeconds] IN (900, 2700)
FROM
	[DurationRow] [r]
ORDER BY
	[r].[Id]

-- Access.Jet.Odbc AccessODBC
DECLARE @InSeconds VarChar -- AnsiString
SET     @InSeconds = 1800

SELECT
	COUNT(*) > 0
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] = ?

-- Access.Jet.Odbc AccessODBC
DECLARE @InTicks VarChar -- AnsiString
SET     @InTicks = 54000000000

SELECT
	COUNT(*) > 0
FROM
	[DurationRow] [r]
WHERE
	[r].[InTicks] = ?

