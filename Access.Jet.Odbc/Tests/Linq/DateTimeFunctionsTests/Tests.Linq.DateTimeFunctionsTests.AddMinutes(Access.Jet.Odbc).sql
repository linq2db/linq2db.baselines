-- Access.Jet.Odbc AccessODBC

SELECT
	DatePart('n', DateAdd('n', -8, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

