BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @month Int -- Int32
SET     @month = 10

SELECT
	DateSerial(2010 + [t].[ID], ?, 1)
FROM
	[LinqDataTypes] [t]

