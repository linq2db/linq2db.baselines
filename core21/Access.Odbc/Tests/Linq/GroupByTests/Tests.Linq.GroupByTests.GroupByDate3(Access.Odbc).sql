BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Sum([selectParam].[MoneyValue]),
	DatePart('yyyy', DateSerial(DatePart('yyyy', [selectParam].[DateTimeValue]), DatePart('m', [selectParam].[DateTimeValue]), 1)),
	DatePart('m', DateSerial(DatePart('yyyy', [selectParam].[DateTimeValue]), DatePart('m', [selectParam].[DateTimeValue]), 1))
FROM
	[LinqDataTypes] [selectParam]
GROUP BY
	DateSerial(DatePart('yyyy', [selectParam].[DateTimeValue]), DatePart('m', [selectParam].[DateTimeValue]), 1)

