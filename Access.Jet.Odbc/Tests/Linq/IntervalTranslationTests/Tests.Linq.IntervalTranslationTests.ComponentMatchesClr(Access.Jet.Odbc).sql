-- Access.Jet.Odbc AccessODBC
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

-- Access.Jet.Odbc AccessODBC
SELECT TOP 2
	Fix(([r].[InSeconds] * 10000000) / 864000000000),
	Fix(([r].[InSeconds] * 10000000) / 36000000000) MOD 24,
	Fix(([r].[InSeconds] * 10000000) / 600000000) MOD 60,
	Fix(([r].[InSeconds] * 10000000) / 10000000) MOD 60
FROM
	[DurationRow] [r]

