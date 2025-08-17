BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

SELECT
	CAST(DateAdd(quarter, [t].[SmallIntValue], [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

