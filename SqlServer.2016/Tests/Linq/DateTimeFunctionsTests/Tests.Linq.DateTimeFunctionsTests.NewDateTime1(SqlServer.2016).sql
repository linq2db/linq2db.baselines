BeforeExecute
-- SqlServer.2016

SELECT
	DATETIMEFROMPARTS(DatePart(year, [t].[DateTimeValue]), 10, 1, 0, 0, 0, 0)
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(month, DATETIMEFROMPARTS(DatePart(year, [t].[DateTimeValue]), 10, 1, 0, 0, 0, 0)) = 10

