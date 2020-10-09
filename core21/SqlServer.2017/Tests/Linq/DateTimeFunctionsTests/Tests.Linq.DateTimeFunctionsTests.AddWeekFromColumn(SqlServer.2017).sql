BeforeExecute
-- SqlServer.2017

SELECT 
	DateAdd(week, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

