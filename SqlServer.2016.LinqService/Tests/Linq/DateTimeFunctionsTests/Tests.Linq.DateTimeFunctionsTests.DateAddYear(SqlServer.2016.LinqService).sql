BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	CAST(DateAdd(year, 11, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

