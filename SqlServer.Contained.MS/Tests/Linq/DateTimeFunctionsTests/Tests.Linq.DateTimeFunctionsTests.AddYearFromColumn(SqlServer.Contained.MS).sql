BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	CAST(DateAdd(year, [t].[SmallIntValue], [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

