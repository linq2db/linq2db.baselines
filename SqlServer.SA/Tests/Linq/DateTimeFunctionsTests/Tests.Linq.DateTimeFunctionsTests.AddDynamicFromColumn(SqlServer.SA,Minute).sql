-- SqlServer.SA SqlServer.2019

SELECT
	DateAdd(minute, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

