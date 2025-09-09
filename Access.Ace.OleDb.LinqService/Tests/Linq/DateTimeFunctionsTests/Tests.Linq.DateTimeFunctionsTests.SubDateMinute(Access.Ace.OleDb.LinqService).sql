BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT
	DATEDIFF('n', [t].[DateTimeValue], DateAdd('n', 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

