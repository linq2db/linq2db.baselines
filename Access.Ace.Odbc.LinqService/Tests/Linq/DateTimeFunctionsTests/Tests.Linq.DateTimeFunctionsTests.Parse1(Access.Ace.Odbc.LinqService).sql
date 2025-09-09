BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	DateValue([d].[DateTimeValue])
FROM
	[LinqDataTypes] [d]
WHERE
	DatePart('d', [d].[DateTimeValue]) > 0

