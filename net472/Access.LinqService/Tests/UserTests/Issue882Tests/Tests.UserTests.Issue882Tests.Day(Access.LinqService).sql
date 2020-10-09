BeforeExecute
-- Access AccessOleDb

SELECT 
	DatePart('d', [t].[DateTimeValue]) MOD 7
FROM
	[LinqDataTypes] [t]

