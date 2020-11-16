BeforeExecute
-- Access AccessOleDb

SELECT
	[d].[DateTimeValue]
FROM
	[LinqDataTypes] [d]
WHERE
	DatePart('d', [d].[DateTimeValue]) > 0

