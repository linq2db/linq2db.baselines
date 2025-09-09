BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	DateValue(DateAdd('m', -2, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

