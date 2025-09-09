BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	DateValue(DateAdd('m', 2, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

