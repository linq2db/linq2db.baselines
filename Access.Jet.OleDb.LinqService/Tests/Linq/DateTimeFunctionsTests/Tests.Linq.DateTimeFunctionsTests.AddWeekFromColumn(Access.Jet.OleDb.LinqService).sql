BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	DateValue(DateAdd('ww', [t].[SmallIntValue], [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

