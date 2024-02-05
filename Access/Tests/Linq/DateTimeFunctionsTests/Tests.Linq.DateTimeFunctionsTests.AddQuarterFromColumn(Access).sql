BeforeExecute
-- Access AccessOleDb

SELECT
	DateAdd('q', [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

