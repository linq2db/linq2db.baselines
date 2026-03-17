-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @DecimalValue1 VarChar -- AnsiString
SET     @DecimalValue1 = NULL
DECLARE @DecimalValue2 VarChar(1, 0) -- AnsiString
SET     @DecimalValue2 = 1

INSERT INTO [MultipleRowsTable]
(
	[Id],
	[DecimalValue1],
	[DecimalValue2]
)
VALUES
(
	?,
	?,
	?
)

-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @DecimalValue1 VarChar(2, 1) -- AnsiString
SET     @DecimalValue1 = 1.5
DECLARE @DecimalValue2 VarChar(2, 1) -- AnsiString
SET     @DecimalValue2 = -2.6

INSERT INTO [MultipleRowsTable]
(
	[Id],
	[DecimalValue1],
	[DecimalValue2]
)
VALUES
(
	?,
	?,
	?
)

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[DecimalValue1],
	[t1].[DecimalValue2]
FROM
	[MultipleRowsTable] [t1]
ORDER BY
	[t1].[Id]

