BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	DateValue(DateAdd('ww', -1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

