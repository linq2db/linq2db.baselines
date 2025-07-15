BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	DatePart('yyyy', [t].[DateTimeValue]) MOD 7
FROM
	[LinqDataTypes] [t]

