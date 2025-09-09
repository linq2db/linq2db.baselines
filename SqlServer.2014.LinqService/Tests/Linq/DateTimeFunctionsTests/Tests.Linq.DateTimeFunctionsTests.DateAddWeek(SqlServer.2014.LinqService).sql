BeforeExecute
-- SqlServer.2014 (asynchronously)

SELECT
	CAST(DateAdd(week, -1, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

