BeforeExecute
-- Access AccessOleDb

SELECT
	DateAdd('ww', [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

