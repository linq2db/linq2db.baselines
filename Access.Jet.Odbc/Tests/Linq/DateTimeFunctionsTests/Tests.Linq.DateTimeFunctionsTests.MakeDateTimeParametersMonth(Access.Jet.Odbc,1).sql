BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @month Int -- Int32
SET     @month = 1

SELECT
	DateSerial(2010 + [t].[ID], ?, 1)
FROM
	[LinqDataTypes] [t]

