BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	Cast(Floor(Cast(DateAdd(year, 11, [t].[DateTimeValue]) as Float)) as DateTime)
FROM
	[LinqDataTypes] [t]

