BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	DatePart('y', [t].[DateTimeValue]) MOD 7
FROM
	[LinqDataTypes] [t]

