-- Access.Jet.Odbc AccessODBC

SELECT
	DatePart('h', [t].[DateTimeValue]) MOD 7
FROM
	[LinqDataTypes] [t]

