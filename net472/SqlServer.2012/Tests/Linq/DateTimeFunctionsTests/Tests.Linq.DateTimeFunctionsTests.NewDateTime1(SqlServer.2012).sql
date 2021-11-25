BeforeExecute
-- SqlServer.2012

SELECT
	DateAdd(month, (DatePart(year, [p].[DateTimeValue]) - 1900) * 12 + 9, 0)
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart(month, DateAdd(month, (DatePart(year, [p].[DateTimeValue]) - 1900) * 12 + 9, 0)) = 10

