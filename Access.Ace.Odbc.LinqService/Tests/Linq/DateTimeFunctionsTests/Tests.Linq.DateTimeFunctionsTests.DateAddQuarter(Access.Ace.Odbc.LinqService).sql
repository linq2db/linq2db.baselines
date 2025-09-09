BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	DateValue(DateAdd('q', -1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

