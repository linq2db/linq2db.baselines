BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	DatePart('n', DateAdd('n', 5, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

