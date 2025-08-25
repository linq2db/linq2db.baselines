BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT
	DateValue(DateAdd('yyyy', [t].[SmallIntValue], [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

