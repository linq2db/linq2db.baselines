BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT
	DateValue(DateAdd('q', [t].[SmallIntValue], [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

