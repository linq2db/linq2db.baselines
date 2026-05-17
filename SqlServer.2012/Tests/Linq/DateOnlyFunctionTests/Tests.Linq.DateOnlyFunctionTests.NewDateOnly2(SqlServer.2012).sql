-- SqlServer.2012

SELECT
	DATETIMEFROMPARTS(DatePart(year, [p].[DateTimeValue]), 10, 1, 0, 0, 0, 0)
FROM
	[LinqDataTypes] [p]

