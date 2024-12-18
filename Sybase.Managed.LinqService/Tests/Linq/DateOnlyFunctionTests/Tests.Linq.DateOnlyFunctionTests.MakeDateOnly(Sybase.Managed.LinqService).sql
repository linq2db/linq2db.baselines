BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t].[c1]
FROM
	(
		SELECT
			DatePart(year, CAST('2010-' + RIGHT('0' + CAST([p].[ID] AS VarChar(2)), 2) + '-01' AS Date)) as [Year_1],
			CAST('2010-' + RIGHT('0' + CAST([p].[ID] AS VarChar(2)), 2) + '-01' AS Date) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Year_1] = 2010 AND [t].[Year_1] IS NOT NULL

