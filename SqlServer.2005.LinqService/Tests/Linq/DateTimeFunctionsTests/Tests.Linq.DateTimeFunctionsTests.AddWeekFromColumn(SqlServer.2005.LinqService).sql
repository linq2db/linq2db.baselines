BeforeExecute
-- SqlServer.2005

SELECT
	DateAdd(dd, DateDiff(dd, 0, DateAdd(week, [t].[SmallIntValue], [t].[DateTimeValue])), 0)
FROM
	[LinqDataTypes] [t]

