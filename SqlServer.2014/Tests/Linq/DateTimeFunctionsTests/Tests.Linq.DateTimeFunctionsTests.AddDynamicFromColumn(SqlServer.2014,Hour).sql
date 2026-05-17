-- SqlServer.2014

SELECT
	DateAdd(hour, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

