BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	DatePart(minute, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

