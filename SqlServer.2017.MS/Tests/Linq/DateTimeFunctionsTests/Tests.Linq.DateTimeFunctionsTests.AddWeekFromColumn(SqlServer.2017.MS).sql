BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	CAST(DateAdd(week, [t].[SmallIntValue], [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

