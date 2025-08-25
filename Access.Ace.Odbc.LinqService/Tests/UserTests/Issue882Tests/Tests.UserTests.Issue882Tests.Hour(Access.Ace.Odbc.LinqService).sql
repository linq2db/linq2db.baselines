BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	DatePart('h', [t].[DateTimeValue]) MOD 7
FROM
	[LinqDataTypes] [t]

