BeforeExecute
-- Access AccessOleDb

SELECT
	DateSerial(DatePart('yyyy', [p].[DateTimeValue]), 10, 1)
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart('m', DateSerial(DatePart('yyyy', [p].[DateTimeValue]), 10, 1)) = 10

