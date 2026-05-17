-- SqlServer.2016

SELECT
	CAST(DateAdd(year, [t].[SmallIntValue], [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

