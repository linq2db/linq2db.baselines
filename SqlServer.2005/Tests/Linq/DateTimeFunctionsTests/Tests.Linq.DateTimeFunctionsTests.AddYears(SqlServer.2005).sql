BeforeExecute
-- SqlServer.2005

SELECT
	Cast(Floor(Cast(DateAdd(year, 1, [t].[DateTimeValue]) as Float)) as DateTime)
FROM
	[LinqDataTypes] [t]

