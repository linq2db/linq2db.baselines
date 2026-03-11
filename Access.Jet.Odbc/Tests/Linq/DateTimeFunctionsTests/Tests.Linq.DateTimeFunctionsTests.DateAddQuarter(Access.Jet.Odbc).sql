-- Access.Jet.Odbc AccessODBC

SELECT
	DateValue(DateAdd('q', -1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

