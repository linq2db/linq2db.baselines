BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	DatePart('h', DateAdd('h', 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

