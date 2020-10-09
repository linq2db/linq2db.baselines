BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	DatePart('y', [t].[DateTimeValue]) MOD 7
FROM
	[LinqDataTypes] [t]

