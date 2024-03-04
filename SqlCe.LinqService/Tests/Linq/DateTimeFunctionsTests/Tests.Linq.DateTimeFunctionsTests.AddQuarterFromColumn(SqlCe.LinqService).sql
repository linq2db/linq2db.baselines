BeforeExecute
-- SqlCe

SELECT
	Cast(Floor(Cast(DateAdd(quarter, [t].[SmallIntValue], [t].[DateTimeValue]) as Float)) as DateTime) as [Date_1]
FROM
	[LinqDataTypes] [t]

