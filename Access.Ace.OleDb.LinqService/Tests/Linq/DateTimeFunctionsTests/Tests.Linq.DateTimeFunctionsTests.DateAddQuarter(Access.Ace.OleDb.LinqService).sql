BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	DateValue(DateAdd('q', -1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

