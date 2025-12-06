-- SqlServer.2025 SqlServer.2022

SELECT
	DATETIMEFROMPARTS(DatePart(year, [p].[DateTimeValue]), 10, 1, 0, 0, 0, 0)
FROM
	[LinqDataTypes] [p]

