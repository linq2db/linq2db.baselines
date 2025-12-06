-- Access.Jet.Odbc AccessODBC

SELECT
	DatePart('n', [t].[DateTimeValue]) MOD 7
FROM
	[LinqDataTypes] [t]

