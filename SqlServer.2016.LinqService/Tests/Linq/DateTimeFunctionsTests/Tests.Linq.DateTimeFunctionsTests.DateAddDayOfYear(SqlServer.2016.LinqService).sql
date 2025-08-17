BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	CAST(DateAdd(dayofyear, 3, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

