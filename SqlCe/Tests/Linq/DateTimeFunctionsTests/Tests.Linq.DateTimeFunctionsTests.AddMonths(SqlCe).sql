BeforeExecute
-- SqlCe

SELECT
	Cast(Floor(Cast(DateAdd(month, -2, [t].[DateTimeValue]) as Float)) as DateTime) as [Date_1]
FROM
	[LinqDataTypes] [t]

