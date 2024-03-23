BeforeExecute
-- SqlCe

SELECT
	Cast(Floor(Cast(DateAdd(year, 1, [t].[DateTimeValue]) as Float)) as DateTime) as [Date_1]
FROM
	[LinqDataTypes] [t]

