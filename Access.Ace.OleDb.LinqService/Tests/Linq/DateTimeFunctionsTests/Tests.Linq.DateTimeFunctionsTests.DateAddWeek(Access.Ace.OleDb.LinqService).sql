BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT
	DateValue(DateAdd('ww', -1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

