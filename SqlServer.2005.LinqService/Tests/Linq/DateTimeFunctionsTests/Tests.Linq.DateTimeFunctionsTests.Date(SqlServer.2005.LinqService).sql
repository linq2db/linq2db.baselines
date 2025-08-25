BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	DateAdd(dd, DateDiff(dd, 0, [t].[DateTimeValue]), 0)
FROM
	[LinqDataTypes] [t]

