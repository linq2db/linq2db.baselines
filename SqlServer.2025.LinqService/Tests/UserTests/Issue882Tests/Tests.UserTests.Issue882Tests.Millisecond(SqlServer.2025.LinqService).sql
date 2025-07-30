BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	DatePart(millisecond, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

