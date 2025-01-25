BeforeExecute
-- Access AccessOleDb

SELECT
	DateValue(DateAdd('m', 2, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

