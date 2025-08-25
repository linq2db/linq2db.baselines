BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	CAST(DateAdd(year, 1, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

