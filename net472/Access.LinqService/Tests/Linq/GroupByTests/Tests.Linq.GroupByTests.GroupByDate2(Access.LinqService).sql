BeforeExecute
-- Access AccessOleDb

SELECT
	Sum([selectParam].[MoneyValue]),
	DatePart('yyyy', [selectParam].[DateTimeValue]),
	DatePart('m', [selectParam].[DateTimeValue])
FROM
	[LinqDataTypes] [selectParam]
GROUP BY
	DatePart('m', [selectParam].[DateTimeValue]),
	DatePart('yyyy', [selectParam].[DateTimeValue])

