BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[c1]
FROM
	(
		SELECT
			DatePart(year, DATETIMEFROMPARTS(2010, [p].[ID], 1, 20, 35, 44, 0)) as [Year_1],
			DATETIMEFROMPARTS(2010, [p].[ID], 1, 20, 35, 44, 0) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Year_1] = 2010 AND [t].[Year_1] IS NOT NULL

