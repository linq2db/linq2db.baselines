BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	DateValue(DateAdd('w', 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

