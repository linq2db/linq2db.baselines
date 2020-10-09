BeforeExecute
-- SqlServer.2008

SELECT 
	DateAdd(quarter, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

