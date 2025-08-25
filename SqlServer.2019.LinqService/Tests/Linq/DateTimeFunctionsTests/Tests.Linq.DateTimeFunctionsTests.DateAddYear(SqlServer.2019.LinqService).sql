BeforeExecute
-- SqlServer.2019 (asynchronously)

SELECT
	CAST(DateAdd(year, 11, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

