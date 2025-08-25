BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	DatePart('w', [t].[DateTimeValue]) - 1
FROM
	[LinqDataTypes] [t]

