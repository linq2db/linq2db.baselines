BeforeExecute
-- Access AccessOleDb

SELECT
	DateValue(DateAdd('q', [t].[SmallIntValue], [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

