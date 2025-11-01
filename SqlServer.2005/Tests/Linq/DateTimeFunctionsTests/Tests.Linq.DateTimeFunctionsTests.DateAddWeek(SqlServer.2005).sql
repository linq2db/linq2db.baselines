-- SqlServer.2005

SELECT
	DateAdd(dd, DateDiff(dd, 0, DateAdd(week, -1, [t].[DateTimeValue])), 0)
FROM
	[LinqDataTypes] [t]

