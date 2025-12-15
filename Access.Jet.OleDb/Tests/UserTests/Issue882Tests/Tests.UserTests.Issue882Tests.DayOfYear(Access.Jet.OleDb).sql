-- Access.Jet.OleDb AccessOleDb

SELECT
	DatePart('y', [t].[DateTimeValue]) MOD 7
FROM
	[LinqDataTypes] [t]

