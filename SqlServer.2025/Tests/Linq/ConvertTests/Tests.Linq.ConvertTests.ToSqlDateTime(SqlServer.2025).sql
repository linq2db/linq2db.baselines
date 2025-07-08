BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	CAST(CAST(DatePart(year, [t].[DateTimeValue]) AS VarChar(11)) + N'-01-01 00:20:00' AS DateTime)
FROM
	[LinqDataTypes] [t]

