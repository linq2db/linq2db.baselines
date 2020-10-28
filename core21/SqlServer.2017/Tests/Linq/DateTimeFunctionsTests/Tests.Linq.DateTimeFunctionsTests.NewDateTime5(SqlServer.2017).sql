BeforeExecute
-- SqlServer.2017

SELECT
	DateAdd(month, (DatePart(year, [p].[DateTimeValue]) - 1899) * 12 + 9, 0)
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart(month, DateAdd(month, (DatePart(year, [p].[DateTimeValue]) - 1899) * 12 + 9, 0)) = 10

