BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	DateValue(DateAdd('q', [t].[SmallIntValue], [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

