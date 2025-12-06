-- SqlServer.2012

SELECT
	DateAdd(second, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

