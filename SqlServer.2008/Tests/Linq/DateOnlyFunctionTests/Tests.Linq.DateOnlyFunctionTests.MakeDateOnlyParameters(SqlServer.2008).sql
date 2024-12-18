BeforeExecute
-- SqlServer.2008
DECLARE @year Int -- Int32
SET     @year = 2010

SELECT
	[t].[c1]
FROM
	(
		SELECT
			DatePart(year, CAST(RIGHT('0' + CAST(@year AS VarChar(4)), 4) + '-' + RIGHT('0' + CAST([p].[ID] AS VarChar(2)), 2) + N'-01' AS Date)) as [Year_1],
			CAST(RIGHT('0' + CAST(@year AS VarChar(4)), 4) + '-' + RIGHT('0' + CAST([p].[ID] AS VarChar(2)), 2) + N'-01' AS Date) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Year_1] = 2010 AND [t].[Year_1] IS NOT NULL

