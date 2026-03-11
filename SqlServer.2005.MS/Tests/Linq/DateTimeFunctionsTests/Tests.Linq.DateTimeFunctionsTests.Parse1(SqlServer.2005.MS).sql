-- SqlServer.2005.MS SqlServer.2005

SELECT
	DateAdd(dd, DateDiff(dd, 0, [d].[DateTimeValue]), 0)
FROM
	[LinqDataTypes] [d]
WHERE
	DatePart(day, [d].[DateTimeValue]) > 0

