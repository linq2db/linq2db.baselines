BeforeExecute
-- Access AccessOleDb

SELECT 
	DateAdd('h', [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

