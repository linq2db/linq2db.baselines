-- Access.Jet.OleDb AccessOleDb

SELECT
	DATEDIFF('s', [t].[DateTimeValue], DateAdd('n', 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

