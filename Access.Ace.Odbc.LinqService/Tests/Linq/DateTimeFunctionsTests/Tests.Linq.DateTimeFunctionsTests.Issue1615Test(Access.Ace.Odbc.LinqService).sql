BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	DateValue(DateAdd('d', 5, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

