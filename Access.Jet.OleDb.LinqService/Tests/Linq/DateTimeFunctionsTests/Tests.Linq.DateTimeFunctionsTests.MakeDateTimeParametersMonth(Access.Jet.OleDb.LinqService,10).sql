BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @month Integer -- Int32
SET     @month = 10

SELECT
	DateSerial(2010 + [t].[ID], @month, 1)
FROM
	[LinqDataTypes] [t]

