BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT
	CAST(DateAdd(weekday, 1, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

