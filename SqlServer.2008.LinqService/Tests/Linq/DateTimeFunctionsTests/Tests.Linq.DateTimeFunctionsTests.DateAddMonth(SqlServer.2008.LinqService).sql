BeforeExecute
-- SqlServer.2008 (asynchronously)

SELECT
	CAST(DateAdd(month, 2, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

