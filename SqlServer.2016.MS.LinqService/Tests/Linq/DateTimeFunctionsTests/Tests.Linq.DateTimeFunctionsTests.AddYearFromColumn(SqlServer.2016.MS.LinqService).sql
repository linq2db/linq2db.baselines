BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

SELECT
	CAST(DateAdd(year, [t].[SmallIntValue], [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

