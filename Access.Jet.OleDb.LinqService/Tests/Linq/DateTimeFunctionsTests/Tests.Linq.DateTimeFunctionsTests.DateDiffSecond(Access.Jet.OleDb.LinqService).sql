BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	DATEDIFF('s', [t].[DateTimeValue], DateAdd('n', 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

