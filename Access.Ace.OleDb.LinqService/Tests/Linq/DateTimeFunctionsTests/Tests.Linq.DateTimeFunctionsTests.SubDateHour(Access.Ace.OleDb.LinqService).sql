BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT
	DATEDIFF('h', [t].[DateTimeValue], DateAdd('h', 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

