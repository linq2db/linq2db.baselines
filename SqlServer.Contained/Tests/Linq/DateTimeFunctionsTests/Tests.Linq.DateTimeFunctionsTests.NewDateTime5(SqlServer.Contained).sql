BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	DATETIMEFROMPARTS(DatePart(year, [t].[DateTimeValue]) + 1, 10, 1, 0, 0, 0, 0)
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(month, DATETIMEFROMPARTS(DatePart(year, [t].[DateTimeValue]) + 1, 10, 1, 0, 0, 0, 0)) = 10

