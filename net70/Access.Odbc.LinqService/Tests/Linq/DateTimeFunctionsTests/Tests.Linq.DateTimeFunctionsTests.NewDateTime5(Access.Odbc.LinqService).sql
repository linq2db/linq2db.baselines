BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	DateSerial(DatePart('yyyy', [p].[DateTimeValue]) + 1, 10, 1)
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart('m', DateSerial(DatePart('yyyy', [p].[DateTimeValue]) + 1, 10, 1)) = 10

