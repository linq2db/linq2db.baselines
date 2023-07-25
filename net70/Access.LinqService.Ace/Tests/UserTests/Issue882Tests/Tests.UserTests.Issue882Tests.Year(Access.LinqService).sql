BeforeExecute
-- Access AccessOleDb

SELECT
	DatePart('yyyy', [t].[DateTimeValue]) MOD 7
FROM
	[LinqDataTypes] [t]

