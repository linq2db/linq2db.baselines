-- SqlServer.2022

SELECT
	DateAdd(minute, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

