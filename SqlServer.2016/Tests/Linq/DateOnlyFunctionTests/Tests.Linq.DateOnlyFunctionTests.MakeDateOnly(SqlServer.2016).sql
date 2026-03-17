-- SqlServer.2016

SELECT
	DATETIMEFROMPARTS(2010, [t].[ID], 1, 0, 0, 0, 0)
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(year, DATETIMEFROMPARTS(2010, [t].[ID], 1, 0, 0, 0, 0)) = 2010

