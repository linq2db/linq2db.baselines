-- Access.Jet.Odbc AccessODBC

SELECT
	DatePart('m', [t].[DateTimeValue]) MOD 7
FROM
	[LinqDataTypes] [t]

