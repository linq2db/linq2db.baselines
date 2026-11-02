-- SqlServer.2008
DECLARE @year Int -- Int32
SET     @year = 2010

SELECT
	CAST(CAST(RIGHT(N'0' + CAST(@year AS VarChar(4)), 4) AS NVarChar(Max)) + N'-' + RIGHT(N'0' + CAST([t].[ID] AS VarChar(2)), 2) + N'-01' AS Date)
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(year, CAST(CAST(RIGHT(N'0' + CAST(@year AS VarChar(4)), 4) AS NVarChar(Max)) + N'-' + RIGHT(N'0' + CAST([t].[ID] AS VarChar(2)), 2) + N'-01' AS Date)) = 2010

