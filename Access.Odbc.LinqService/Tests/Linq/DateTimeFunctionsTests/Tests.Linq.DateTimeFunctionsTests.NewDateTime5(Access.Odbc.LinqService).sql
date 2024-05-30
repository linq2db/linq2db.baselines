BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	DatePart('yyyy', [t].[DateTimeValue]) + 1
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart('m', DateSerial(DatePart('yyyy', [t].[DateTimeValue]) + 1, 10, 1)) = 10

