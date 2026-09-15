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
DECLARE @Value VarChar(3, 0) -- AnsiString
SET     @Value = -900
DECLARE @p Int -- Int32
SET     @p = 900

SELECT
	[x].[Id],
	[x].[InSeconds],
	[x].[InTicks],
	[x].[Undeclared],
	[x].[UndeclaredSeconds]
FROM
	[DurationRow] [x]
WHERE
	[x].[InSeconds] >= -? AND [x].[InSeconds] <= ?

-- Access.Ace.Odbc AccessODBC
DECLARE @Value VarChar(4, 0) -- AnsiString
SET     @Value = -2700
DECLARE @p Int -- Int32
SET     @p = 2700

SELECT
	[x].[Id],
	[x].[InSeconds],
	[x].[InTicks],
	[x].[Undeclared],
	[x].[UndeclaredSeconds]
FROM
	[DurationRow] [x]
WHERE
	[x].[InSeconds] >= -? AND [x].[InSeconds] <= ?

-- Access.Ace.Odbc AccessODBC
DECLARE @Value VarChar(3, 0) -- AnsiString
SET     @Value = -900
DECLARE @p Int -- Int32
SET     @p = 900

SELECT
	[x].[Id],
	[x].[InSeconds],
	[x].[InTicks],
	[x].[Undeclared],
	[x].[UndeclaredSeconds]
FROM
	[DurationRow] [x]
WHERE
	[x].[InSeconds] >= -? AND [x].[InSeconds] <= ?

-- Access.Ace.Odbc AccessODBC
DECLARE @Value VarChar(4, 0) -- AnsiString
SET     @Value = -2700
DECLARE @p Int -- Int32
SET     @p = 2700

SELECT
	[x].[Id],
	[x].[InSeconds],
	[x].[InTicks],
	[x].[Undeclared],
	[x].[UndeclaredSeconds]
FROM
	[DurationRow] [x]
WHERE
	[x].[InSeconds] >= -? AND [x].[InSeconds] <= ?

