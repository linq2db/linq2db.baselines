BeforeExecute
-- SqlServer.2008 (asynchronously)

SELECT
	CAST(DateAdd(day, 5, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

