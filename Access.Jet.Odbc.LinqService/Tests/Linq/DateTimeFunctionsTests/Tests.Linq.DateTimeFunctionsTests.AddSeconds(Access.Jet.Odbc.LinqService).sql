BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	DatePart('s', DateAdd('s', -35, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

