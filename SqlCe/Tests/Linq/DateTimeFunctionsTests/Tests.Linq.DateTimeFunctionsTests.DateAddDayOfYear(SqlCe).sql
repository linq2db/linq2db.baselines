BeforeExecute
-- SqlCe

SELECT
	Cast(Floor(Cast(DateAdd(dayofyear, 3, [t].[DateTimeValue]) as Float)) as DateTime) as [Date_1]
FROM
	[LinqDataTypes] [t]

