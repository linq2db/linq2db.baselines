BeforeExecute
-- SqlCe

SELECT
	Cast(Floor(Cast([d].[DateTimeValue] as Float)) as DateTime) as [Date_1]
FROM
	[LinqDataTypes] [d]
WHERE
	DatePart(day, [d].[DateTimeValue]) > 0

