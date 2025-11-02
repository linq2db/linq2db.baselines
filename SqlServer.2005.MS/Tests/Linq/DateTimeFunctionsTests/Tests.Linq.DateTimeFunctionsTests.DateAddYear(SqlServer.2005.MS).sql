-- SqlServer.2005.MS SqlServer.2005

SELECT
	DateAdd(dd, DateDiff(dd, 0, DateAdd(year, 11, [t].[DateTimeValue])), 0)
FROM
	[LinqDataTypes] [t]

