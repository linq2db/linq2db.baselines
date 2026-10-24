-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InSeconds VarChar -- AnsiString
SET     @InSeconds = 5400
DECLARE @InTicks VarChar -- AnsiString
SET     @InTicks = 54000000000
DECLARE @Undeclared VarChar -- AnsiString
SET     @Undeclared = 54000000000
DECLARE @UndeclaredSeconds VarChar -- AnsiString
SET     @UndeclaredSeconds = 5400

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
SET     @InSeconds = 3600
DECLARE @InTicks VarChar -- AnsiString
SET     @InTicks = 36000000000
DECLARE @Undeclared VarChar -- AnsiString
SET     @Undeclared = 36000000000
DECLARE @UndeclaredSeconds VarChar -- AnsiString
SET     @UndeclaredSeconds = 3600

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
SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
ORDER BY
	[r].[InSeconds]

-- Access.Ace.Odbc AccessODBC
SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
ORDER BY
	[r].[InTicks] DESC

