BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	DateValue(DateAdd('yyyy', 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

