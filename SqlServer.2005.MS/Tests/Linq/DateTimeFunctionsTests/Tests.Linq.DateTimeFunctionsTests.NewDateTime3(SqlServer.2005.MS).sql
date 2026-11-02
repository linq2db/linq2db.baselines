-- SqlServer.2005.MS SqlServer.2005
SELECT
	CAST(CAST(RIGHT(N'0' + CAST(DatePart(year, [t].[DateTimeValue]) AS VarChar(4)), 4) AS NVarChar(Max)) + N'-10-01 20:35:44.000' AS DateTime)
FROM
	[LinqDataTypes] [t]

