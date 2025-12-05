-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	DatePart(dayofyear, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

