-- SqlServer.2017

SELECT
	DateAdd(month, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

