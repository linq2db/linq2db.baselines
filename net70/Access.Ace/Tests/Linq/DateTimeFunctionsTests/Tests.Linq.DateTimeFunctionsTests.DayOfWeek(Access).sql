BeforeExecute
-- Access AccessOleDb

SELECT
	DatePart('w', [t].[DateTimeValue]) - 1
FROM
	[LinqDataTypes] [t]

