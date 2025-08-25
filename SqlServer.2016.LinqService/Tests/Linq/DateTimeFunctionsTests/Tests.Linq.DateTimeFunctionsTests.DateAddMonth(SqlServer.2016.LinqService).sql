BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	CAST(DateAdd(month, 2, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

