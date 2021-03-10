BeforeExecute
-- Access AccessOleDb

SELECT
	DatePart('yyyy', [selectParam].[DateTimeValue])
FROM
	[LinqDataTypes] [selectParam]
GROUP BY
	DatePart('yyyy', [selectParam].[DateTimeValue])

