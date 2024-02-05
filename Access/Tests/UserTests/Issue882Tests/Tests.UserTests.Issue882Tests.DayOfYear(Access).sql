BeforeExecute
-- Access AccessOleDb

SELECT
	DatePart('y', [t].[DateTimeValue]) MOD 7
FROM
	[LinqDataTypes] [t]

