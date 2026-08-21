-- Access.Ace.Odbc AccessODBC
DECLARE @value VarChar -- AnsiString
SET     @value = 4567
DECLARE @value VarChar -- AnsiString
SET     @value = 45670000000

UPDATE
	[DurationRow] [t1]
SET
	[t1].[InSeconds] = ?,
	[t1].[InTicks] = ?
WHERE
	[t1].[Id] = 1

-- Access.Ace.Odbc AccessODBC
DECLARE @value VarChar -- AnsiString
SET     @value = 4567
DECLARE @value VarChar -- AnsiString
SET     @value = 45670000000
DECLARE @value VarChar -- AnsiString
SET     @value = 45670000000
DECLARE @value VarChar -- AnsiString
SET     @value = 4567

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
	1,
	?,
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
SELECT TOP 2
	[t1].[Id],
	[t1].[InSeconds],
	[t1].[InTicks],
	[t1].[Undeclared],
	[t1].[UndeclaredSeconds]
FROM
	[DurationRow] [t1]

-- Access.Ace.Odbc AccessODBC
DECLARE @value VarChar -- AnsiString
SET     @value = 19260
DECLARE @value VarChar -- AnsiString
SET     @value = 192600000000

UPDATE
	[DurationRow] [t1]
SET
	[t1].[InSeconds] = ?,
	[t1].[InTicks] = ?
WHERE
	[t1].[Id] = 1

-- Access.Ace.Odbc AccessODBC
SELECT TOP 2
	[t1].[Id],
	[t1].[InSeconds],
	[t1].[InTicks],
	[t1].[Undeclared],
	[t1].[UndeclaredSeconds]
FROM
	[DurationRow] [t1]

