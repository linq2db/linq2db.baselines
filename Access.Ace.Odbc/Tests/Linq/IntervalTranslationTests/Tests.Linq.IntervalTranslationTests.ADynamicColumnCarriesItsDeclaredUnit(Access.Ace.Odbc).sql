-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Elapsed VarChar -- AnsiString
SET     @Elapsed = 5400

INSERT INTO [DynamicDurationRow]
(
	[Id],
	[Elapsed]
)
VALUES
(
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
SELECT TOP 2
	[t1].[Id],
	[t1].[Elapsed]
FROM
	[DynamicDurationRow] [t1]

-- Access.Ace.Odbc AccessODBC
SELECT TOP 2
	[r].[Elapsed] / 60
FROM
	[DynamicDurationRow] [r]

