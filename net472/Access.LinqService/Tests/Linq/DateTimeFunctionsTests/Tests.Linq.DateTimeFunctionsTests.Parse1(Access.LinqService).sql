BeforeExecute
-- Access AccessOleDb

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart('d', [t].[DateTimeValue]) > 0

