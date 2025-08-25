BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	CAST(DateAdd(day, 5, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

