-- Access.Ace.OleDb AccessOleDb

SELECT
	DatePart('h', [t].[DateTimeValue]) MOD 7
FROM
	[LinqDataTypes] [t]

