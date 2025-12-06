-- Access.Ace.OleDb AccessOleDb

SELECT
	DatePart('m', [t].[DateTimeValue]) MOD 7
FROM
	[LinqDataTypes] [t]

