-- SqlServer.2025.MS SqlServer.2025

SELECT
	DatePart(hour, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

