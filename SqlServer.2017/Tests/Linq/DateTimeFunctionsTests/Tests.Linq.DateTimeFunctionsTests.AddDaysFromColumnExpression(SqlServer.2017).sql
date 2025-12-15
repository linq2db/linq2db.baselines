-- SqlServer.2017

SELECT
	DateAdd(day, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

