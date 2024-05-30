BeforeExecute
-- Access AccessOleDb

SELECT
	DateValue(DateAdd('d', 5, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

