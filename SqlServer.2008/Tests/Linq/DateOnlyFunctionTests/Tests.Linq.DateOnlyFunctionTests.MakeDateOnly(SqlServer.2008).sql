BeforeExecute
-- SqlServer.2008

SELECT
	[t].[c1]
FROM
	(
		SELECT
			DatePart(year, CAST(N'2010-' + RIGHT('0' + CAST([p].[ID] AS VarChar(2)), 2) + N'-01' AS Date)) as [Year_1],
			CAST(N'2010-' + RIGHT('0' + CAST([p].[ID] AS VarChar(2)), 2) + N'-01' AS Date) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Year_1] = 2010 AND [t].[Year_1] IS NOT NULL

