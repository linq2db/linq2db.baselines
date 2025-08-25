BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	CAST(DateAdd(month, 2, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

