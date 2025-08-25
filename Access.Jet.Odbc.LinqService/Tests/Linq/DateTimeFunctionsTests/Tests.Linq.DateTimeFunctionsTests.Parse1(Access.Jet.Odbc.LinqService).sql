BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	DateValue([d].[DateTimeValue])
FROM
	[LinqDataTypes] [d]
WHERE
	DatePart('d', [d].[DateTimeValue]) > 0

