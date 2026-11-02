-- SqlServer.2008
SELECT
	CAST(CAST(RIGHT(N'0' + CAST(DatePart(year, [p].[DateTimeValue]) AS VarChar(4)), 4) AS NVarChar(Max)) + N'-10-01' AS DateTime2)
FROM
	[LinqDataTypes] [p]

