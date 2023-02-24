BeforeExecute
-- SqlCe

SELECT
	Cast(Floor(Cast([t].[DateTimeValue] as Float)) as DateTime)
FROM
	[LinqDataTypes] [t]

