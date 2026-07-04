-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value VarChar(4, 2) -- AnsiString
SET     @Value = 12.34

INSERT INTO [OptionDecimalTable]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Value VarChar -- AnsiString
SET     @Value = NULL

INSERT INTO [OptionDecimalTable]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

-- Access.Jet.Odbc AccessODBC

SELECT TOP 2
	[r].[Id],
	[r].[Value]
FROM
	[OptionDecimalTable] [r]
WHERE
	[r].[Id] = 1

-- Access.Jet.Odbc AccessODBC

SELECT TOP 2
	[r].[Id],
	[r].[Value]
FROM
	[OptionDecimalTable] [r]
WHERE
	[r].[Id] = 2

