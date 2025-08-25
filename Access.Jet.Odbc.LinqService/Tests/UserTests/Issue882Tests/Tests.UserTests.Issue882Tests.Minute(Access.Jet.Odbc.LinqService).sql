BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	DatePart('n', [t].[DateTimeValue]) MOD 7
FROM
	[LinqDataTypes] [t]

