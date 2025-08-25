BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	DatePart('m', [t].[DateTimeValue]) MOD 7
FROM
	[LinqDataTypes] [t]

