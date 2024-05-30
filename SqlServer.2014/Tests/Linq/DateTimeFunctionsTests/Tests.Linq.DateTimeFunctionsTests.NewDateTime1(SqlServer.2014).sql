BeforeExecute
-- SqlServer.2014

SELECT
	DatePart(year, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(month, DATETIMEFROMPARTS(DatePart(year, [t].[DateTimeValue]), 10, 1, 0, 0, 0, 0)) = 10

