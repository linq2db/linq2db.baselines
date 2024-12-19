BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	DateValue(DateAdd('ww', -1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

