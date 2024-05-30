BeforeExecute
-- Access AccessOleDb

SELECT
	DateValue(DateAdd('ww', [t].[SmallIntValue], [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

