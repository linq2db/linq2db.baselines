-- Access.Ace.OleDb AccessOleDb

SELECT
	DatePart('n', [t].[DateTimeValue]) MOD 7
FROM
	[LinqDataTypes] [t]

