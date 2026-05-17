-- SqlServer.2012

SELECT
	DateAdd(year, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

