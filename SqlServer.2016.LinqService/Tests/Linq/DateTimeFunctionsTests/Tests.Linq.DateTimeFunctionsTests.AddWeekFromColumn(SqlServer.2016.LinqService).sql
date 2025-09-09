BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	CAST(DateAdd(week, [t].[SmallIntValue], [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

