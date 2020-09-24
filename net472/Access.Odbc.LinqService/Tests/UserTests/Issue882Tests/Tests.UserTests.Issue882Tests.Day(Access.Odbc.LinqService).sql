BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	DatePart('d', [t].[DateTimeValue]) MOD 7
FROM
	[LinqDataTypes] [t]

