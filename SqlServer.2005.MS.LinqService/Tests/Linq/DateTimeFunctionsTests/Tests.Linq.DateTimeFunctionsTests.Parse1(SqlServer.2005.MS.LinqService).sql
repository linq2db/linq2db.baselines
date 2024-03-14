BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	Cast(Floor(Cast([d].[DateTimeValue] as Float)) as DateTime)
FROM
	[LinqDataTypes] [d]
WHERE
	DatePart(day, [d].[DateTimeValue]) > 0

