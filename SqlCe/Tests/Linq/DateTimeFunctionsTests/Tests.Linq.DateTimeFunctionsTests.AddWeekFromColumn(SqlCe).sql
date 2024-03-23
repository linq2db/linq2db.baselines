BeforeExecute
-- SqlCe

SELECT
	Cast(Floor(Cast(DateAdd(week, [t].[SmallIntValue], [t].[DateTimeValue]) as Float)) as DateTime) as [Date_1]
FROM
	[LinqDataTypes] [t]

