-- SqlServer.2005
SELECT
	CAST(CAST(RIGHT(N'0' + CAST(DatePart(year, [t].[DateTimeValue]) + 1 AS VarChar(4)), 4) AS NVarChar(Max)) + N'-10-01' AS DateTime)
FROM
	[LinqDataTypes] [t]

