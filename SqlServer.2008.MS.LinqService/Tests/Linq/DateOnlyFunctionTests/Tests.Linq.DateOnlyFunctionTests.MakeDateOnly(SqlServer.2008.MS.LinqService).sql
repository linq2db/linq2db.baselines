BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			DatePart(year, Convert(Date, N'2010-' + REPLICATE('0', CASE WHEN LEN(CAST([t].[ID] as NVARCHAR)) > 2 THEN 0 ELSE (2 - LEN(CAST([t].[ID] as NVARCHAR))) END) + CAST([t].[ID] as NVARCHAR) + N'-01')) as [Year_1],
			Convert(Date, N'2010-' + REPLICATE('0', CASE WHEN LEN(CAST([t].[ID] as NVARCHAR)) > 2 THEN 0 ELSE (2 - LEN(CAST([t].[ID] as NVARCHAR))) END) + CAST([t].[ID] as NVARCHAR) + N'-01') as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[Year_1] = 2010

