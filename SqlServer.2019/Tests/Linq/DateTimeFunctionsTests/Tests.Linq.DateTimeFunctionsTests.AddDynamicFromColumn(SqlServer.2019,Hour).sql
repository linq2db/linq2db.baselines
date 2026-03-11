-- SqlServer.2019

SELECT
	DateAdd(hour, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

