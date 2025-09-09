BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT
	DateValue(DateAdd('q', -1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

