BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	DatePart('n', DateAdd('n', -8, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

