-- SqlServer.2008

SELECT
	CAST(DateAdd(week, [t].[SmallIntValue], [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

