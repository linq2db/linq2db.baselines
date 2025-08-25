BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	DateValue(DateAdd('d', 5, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

