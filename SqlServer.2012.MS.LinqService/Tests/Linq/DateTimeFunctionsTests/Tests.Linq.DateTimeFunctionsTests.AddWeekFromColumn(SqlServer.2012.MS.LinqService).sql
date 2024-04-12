BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	CAST(DateAdd(week, [t].[SmallIntValue], [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

