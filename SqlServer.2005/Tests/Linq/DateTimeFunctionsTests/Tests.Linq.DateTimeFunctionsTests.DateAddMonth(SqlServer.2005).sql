BeforeExecute
-- SqlServer.2005

SELECT
	Cast(Floor(Cast(DateAdd(month, 2, [t].[DateTimeValue]) as Float)) as DateTime)
FROM
	[LinqDataTypes] [t]

