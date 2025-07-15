BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	CAST(DateAdd(week, [t].[SmallIntValue], [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

