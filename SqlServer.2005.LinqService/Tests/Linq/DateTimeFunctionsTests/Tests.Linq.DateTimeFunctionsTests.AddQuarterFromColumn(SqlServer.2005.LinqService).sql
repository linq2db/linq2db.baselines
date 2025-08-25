BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	DateAdd(dd, DateDiff(dd, 0, DateAdd(quarter, [t].[SmallIntValue], [t].[DateTimeValue])), 0)
FROM
	[LinqDataTypes] [t]

