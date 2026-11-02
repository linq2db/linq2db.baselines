-- SqlServer.2008.MS SqlServer.2008
DECLARE @month Int -- Int32
SET     @month = 1

SELECT
	CAST(CAST(RIGHT(N'0' + CAST(2010 + [t].[ID] AS VarChar(4)), 4) AS NVarChar(Max)) + N'-' + RIGHT(N'0' + CAST(@month AS VarChar(2)), 2) + N'-01' AS Date)
FROM
	[LinqDataTypes] [t]

