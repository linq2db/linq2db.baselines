-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InSeconds VarChar -- AnsiString
SET     @InSeconds = -90000
DECLARE @InTicks VarChar -- AnsiString
SET     @InTicks = -900000000000
DECLARE @Undeclared VarChar -- AnsiString
SET     @Undeclared = -900000000000
DECLARE @UndeclaredSeconds VarChar -- AnsiString
SET     @UndeclaredSeconds = -90000

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
	([r].[InSeconds] * 10000000) / 36000000000
FROM
	[DurationRow] [r]

