BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	DateValue(DateAdd('q', [t].[SmallIntValue], [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

