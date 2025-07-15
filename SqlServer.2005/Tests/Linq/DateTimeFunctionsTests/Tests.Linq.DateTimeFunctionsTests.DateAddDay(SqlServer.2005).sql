BeforeExecute
-- SqlServer.2005

SELECT
	DateAdd(dd, DateDiff(dd, 0, DateAdd(day, 5, [t].[DateTimeValue])), 0)
FROM
	[LinqDataTypes] [t]

