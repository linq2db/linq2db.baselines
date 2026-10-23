-- Access.Jet.Odbc AccessODBC
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

-- Access.Jet.Odbc AccessODBC
SELECT TOP 1
	(
		SELECT
			MIN([t1].[InSeconds])
		FROM
			[DurationRow] [t1]
	),
	(
		SELECT
			MAX([t2].[InSeconds])
		FROM
			[DurationRow] [t2]
	)
FROM
	[DurationRow] [r]

-- Access.Jet.Odbc AccessODBC
SELECT TOP 1
	(
		SELECT
			MIN([t1].[InSeconds])
		FROM
			[DurationRow] [t1]
	),
	(
		SELECT
			MAX([t2].[InSeconds])
		FROM
			[DurationRow] [t2]
	)
FROM
	[DurationRow] [r]

-- Access.Jet.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 60

SELECT TOP 1
	(
		SELECT
			MIN([t1].[InSeconds])
		FROM
			[DurationRow] [t1]
	)
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] > ?

