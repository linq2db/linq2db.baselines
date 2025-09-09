BeforeExecute
-- SqlServer.2008 (asynchronously)

SELECT
	CAST(DateAdd(week, [t].[SmallIntValue], [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

