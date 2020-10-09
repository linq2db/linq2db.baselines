BeforeExecute
-- Access AccessOleDb

SELECT 
	DateAdd('m', [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

