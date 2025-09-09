BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	DateValue(DateAdd('yyyy', 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

