-- SqlServer.2012

SELECT
	DateAdd(hour, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

