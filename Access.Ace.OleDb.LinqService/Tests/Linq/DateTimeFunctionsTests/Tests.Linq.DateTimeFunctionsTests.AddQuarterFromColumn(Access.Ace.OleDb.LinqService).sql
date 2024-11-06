BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	DateValue(DateAdd('q', [t].[SmallIntValue], [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

