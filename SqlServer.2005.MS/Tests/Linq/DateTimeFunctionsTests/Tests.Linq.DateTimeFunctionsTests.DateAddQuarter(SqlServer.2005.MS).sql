-- SqlServer.2005.MS SqlServer.2005

SELECT
	DateAdd(dd, DateDiff(dd, 0, DateAdd(quarter, -1, [t].[DateTimeValue])), 0)
FROM
	[LinqDataTypes] [t]

