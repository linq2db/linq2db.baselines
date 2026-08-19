-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InSeconds VarChar -- AnsiString
SET     @InSeconds = 1
DECLARE @InTicks VarChar -- AnsiString
SET     @InTicks = 12345670
DECLARE @Undeclared VarChar -- AnsiString
SET     @Undeclared = 12345670
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

-- Access.Jet.Odbc AccessODBC
SELECT TOP 2
	Fix([r].[InTicks] / 10000) MOD 1000,
	Fix([r].[InTicks] / 10) MOD 1000
FROM
	[DurationRow] [r]

