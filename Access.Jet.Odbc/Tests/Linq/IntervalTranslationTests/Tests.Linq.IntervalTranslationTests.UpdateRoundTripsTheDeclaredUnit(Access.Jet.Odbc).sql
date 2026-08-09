-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InSeconds VarChar -- AnsiString
SET     @InSeconds = 4567
DECLARE @InTicks VarChar -- AnsiString
SET     @InTicks = 45670000000
DECLARE @Undeclared VarChar -- AnsiString
SET     @Undeclared = 45670000000
DECLARE @UndeclaredSeconds VarChar -- AnsiString
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
	?,
	?,
	?,
	?,
	?
)

-- Access.Jet.Odbc AccessODBC
SELECT TOP 2
	[t1].[Id],
	[t1].[InSeconds],
	[t1].[InTicks],
	[t1].[Undeclared],
	[t1].[UndeclaredSeconds]
FROM
	[DurationRow] [t1]

-- Access.Jet.Odbc AccessODBC
DECLARE @InSeconds VarChar -- AnsiString
SET     @InSeconds = 19260
DECLARE @InTicks VarChar -- AnsiString
SET     @InTicks = 192600000000
DECLARE @Undeclared VarChar -- AnsiString
SET     @Undeclared = 45670000000
DECLARE @UndeclaredSeconds VarChar -- AnsiString
SET     @UndeclaredSeconds = 4567
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[DurationRow] [t1]
SET
	[t1].[InSeconds] = ?,
	[t1].[InTicks] = ?,
	[t1].[Undeclared] = ?,
	[t1].[UndeclaredSeconds] = ?
WHERE
	[t1].[Id] = ?

-- Access.Jet.Odbc AccessODBC
SELECT TOP 2
	[t1].[Id],
	[t1].[InSeconds],
	[t1].[InTicks],
	[t1].[Undeclared],
	[t1].[UndeclaredSeconds]
FROM
	[DurationRow] [t1]

-- Access.Jet.Odbc AccessODBC
DECLARE @InSeconds VarChar -- AnsiString
SET     @InSeconds = 4567
DECLARE @InTicks VarChar -- AnsiString
SET     @InTicks = 45670000000

UPDATE
	[DurationRow] [r]
SET
	[r].[InSeconds] = ?,
	[r].[InTicks] = ?
WHERE
	[r].[Id] = 1

-- Access.Jet.Odbc AccessODBC
SELECT TOP 2
	[t1].[Id],
	[t1].[InSeconds],
	[t1].[InTicks],
	[t1].[Undeclared],
	[t1].[UndeclaredSeconds]
FROM
	[DurationRow] [t1]

