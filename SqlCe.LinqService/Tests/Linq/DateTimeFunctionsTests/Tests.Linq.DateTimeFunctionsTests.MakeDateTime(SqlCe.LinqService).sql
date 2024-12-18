BeforeExecute
-- SqlCe

SELECT
	[t].[c1]
FROM
	(
		SELECT
			DatePart(year, CAST('2010-' + REPLICATE('0', 2 - LEN(CAST([p].[ID] AS NVarChar(2)))) + CAST([p].[ID] AS NVarChar(2)) + '-01' AS DateTime)) as [Year_1],
			CAST('2010-' + REPLICATE('0', 2 - LEN(CAST([p].[ID] AS NVarChar(2)))) + CAST([p].[ID] AS NVarChar(2)) + '-01' AS DateTime) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Year_1] = 2010 AND [t].[Year_1] IS NOT NULL

