BeforeExecute
-- SqlServer.2005

SELECT
	Cast(Floor(Cast(DateAdd(dayofyear, 3, [t].[DateTimeValue]) as Float)) as DateTime)
FROM
	[LinqDataTypes] [t]

