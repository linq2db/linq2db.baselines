BeforeExecute
-- Access AccessOleDb

SELECT
	DateValue(DateAdd('w', 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

