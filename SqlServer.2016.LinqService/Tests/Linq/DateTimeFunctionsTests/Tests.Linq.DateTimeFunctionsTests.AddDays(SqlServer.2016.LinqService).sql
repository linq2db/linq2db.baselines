BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	CAST(DateAdd(day, 5, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

