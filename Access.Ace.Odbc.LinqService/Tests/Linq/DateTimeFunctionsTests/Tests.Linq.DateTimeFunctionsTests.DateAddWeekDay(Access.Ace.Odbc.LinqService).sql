BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	DateValue(DateAdd('w', 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

