-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	DATETIMEFROMPARTS(DatePart(year, [t].[DateTimeValue]), 10, 1, 0, 0, 0, 0)
FROM
	[LinqDataTypes] [t]

