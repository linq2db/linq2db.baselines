BeforeExecute
-- Access AccessOleDb

SELECT
	DatePart('yyyy', [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart('m', DateSerial(DatePart('yyyy', [t].[DateTimeValue]), 10, 1)) = 10

