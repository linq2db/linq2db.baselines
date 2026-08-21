-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InSeconds VarChar -- AnsiString
SET     @InSeconds = 10800
DECLARE @InTicks VarChar -- AnsiString
SET     @InTicks = 108000000000
DECLARE @Undeclared VarChar -- AnsiString
SET     @Undeclared = 108000000000
DECLARE @UndeclaredSeconds VarChar -- AnsiString
SET     @UndeclaredSeconds = 10800

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
SELECT TOP 2
	[r].[InSeconds] / 3600,
	[r].[InTicks] / 36000000000
FROM
	[DurationRow] [r]

