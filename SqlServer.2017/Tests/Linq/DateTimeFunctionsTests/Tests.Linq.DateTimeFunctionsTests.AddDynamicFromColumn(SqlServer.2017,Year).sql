-- SqlServer.2017

SELECT
	DateAdd(year, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

