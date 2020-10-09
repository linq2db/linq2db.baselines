BeforeExecute
-- SqlServer.2005

SELECT 
	DateAdd(quarter, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

