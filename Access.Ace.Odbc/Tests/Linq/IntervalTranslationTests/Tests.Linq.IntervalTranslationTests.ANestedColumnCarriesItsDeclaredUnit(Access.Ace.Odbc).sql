-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Declared_Elapsed VarChar -- AnsiString
SET     @Declared_Elapsed = 5400
DECLARE @Converted_Elapsed VarChar -- AnsiString
SET     @Converted_Elapsed = 5400

INSERT INTO [NestedDurationRow]
(
	[Id],
	[Declared],
	[Converted]
)
VALUES
(
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
SELECT TOP 2
	[t1].[Id],
	[t1].[Declared],
	[t1].[Converted]
FROM
	[NestedDurationRow] [t1]

-- Access.Ace.Odbc AccessODBC
SELECT TOP 2
	[r].[Declared] / 60
FROM
	[NestedDurationRow] [r]

