BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	DatePart('yyyy', [t].[DateTimeValue]) MOD 7
FROM
	[LinqDataTypes] [t]

