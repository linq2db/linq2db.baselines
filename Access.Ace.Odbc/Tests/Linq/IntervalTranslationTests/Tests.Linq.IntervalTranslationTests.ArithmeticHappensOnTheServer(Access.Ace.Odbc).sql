-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InSeconds VarChar -- AnsiString
SET     @InSeconds = 183845
DECLARE @InTicks VarChar -- AnsiString
SET     @InTicks = 1838450000000
DECLARE @Undeclared VarChar -- AnsiString
SET     @Undeclared = 1838450000000
DECLARE @UndeclaredSeconds VarChar -- AnsiString
SET     @UndeclaredSeconds = 183845

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
	Fix([r].[InSeconds] / 3600) MOD 24,
	[r].[InTicks] / 600000000
FROM
	[DurationRow] [r]

