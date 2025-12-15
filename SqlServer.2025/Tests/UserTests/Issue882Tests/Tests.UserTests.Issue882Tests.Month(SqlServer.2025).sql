-- SqlServer.2025

SELECT
	DatePart(month, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

