BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	DatePart('h', DateAdd('h', 22, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

