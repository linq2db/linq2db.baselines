-- SqlServer.2005
SELECT
	CAST(N'2010-' + CAST(RIGHT(N'0' + CAST([t].[ID] AS VarChar(2)), 2) AS NVarChar(Max)) + N'-01' AS DateTime)
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(year, CAST(N'2010-' + CAST(RIGHT(N'0' + CAST([t].[ID] AS VarChar(2)), 2) AS NVarChar(Max)) + N'-01' AS DateTime)) = 2010

