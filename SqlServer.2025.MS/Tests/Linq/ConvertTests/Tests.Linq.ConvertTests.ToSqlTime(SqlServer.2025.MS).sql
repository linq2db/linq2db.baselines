-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	CAST(CAST(DatePart(hour, [t].[DateTimeValue]) AS NVarChar(11)) + N':01:01' AS Time)
FROM
	[LinqDataTypes] [t]

