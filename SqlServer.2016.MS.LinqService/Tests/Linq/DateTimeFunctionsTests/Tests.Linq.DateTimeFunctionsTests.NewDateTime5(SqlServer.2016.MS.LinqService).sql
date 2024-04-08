BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	DatePart(year, [t].[DateTimeValue]) + 1
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(month, DATETIMEFROMPARTS(DatePart(year, [t].[DateTimeValue]) + 1, 10, 1, 0, 0, 0, 0)) = 10

