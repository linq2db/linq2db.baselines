BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT 
	DateAdd(month, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

