-- SqlServer.2016

SELECT
	DateAdd(minute, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

