BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	DateAdd(dd, DateDiff(dd, 0, DateAdd(dayofyear, 3, [t].[DateTimeValue])), 0)
FROM
	[LinqDataTypes] [t]

