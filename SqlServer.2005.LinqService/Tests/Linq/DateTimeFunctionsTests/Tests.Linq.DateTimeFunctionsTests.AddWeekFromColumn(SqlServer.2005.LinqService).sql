BeforeExecute
-- SqlServer.2005

SELECT
	Cast(Floor(Cast(DateAdd(week, [t].[SmallIntValue], [t].[DateTimeValue]) as Float)) as DateTime)
FROM
	[LinqDataTypes] [t]

