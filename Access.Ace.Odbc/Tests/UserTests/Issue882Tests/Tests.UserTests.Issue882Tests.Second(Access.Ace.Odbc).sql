-- Access.Ace.Odbc AccessODBC

SELECT
	DatePart('s', [t].[DateTimeValue]) MOD 7
FROM
	[LinqDataTypes] [t]

