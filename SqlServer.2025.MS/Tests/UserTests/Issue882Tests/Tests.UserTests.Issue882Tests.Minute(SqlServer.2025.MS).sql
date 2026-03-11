-- SqlServer.2025.MS SqlServer.2025

SELECT
	DatePart(minute, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

