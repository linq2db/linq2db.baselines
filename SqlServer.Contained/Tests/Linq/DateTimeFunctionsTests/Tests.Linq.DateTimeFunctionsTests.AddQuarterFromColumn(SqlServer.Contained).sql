-- SqlServer.Contained SqlServer.2019

SELECT
	CAST(DateAdd(quarter, [t].[SmallIntValue], [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

