BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	DateValue(DateAdd('q', -1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

