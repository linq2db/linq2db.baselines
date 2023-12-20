BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Convert(DateTime, N'2010-' + REPLICATE('0', CASE WHEN LEN(CAST([p].[ID] as NVARCHAR)) > 2 THEN 0 ELSE (2 - LEN(CAST([p].[ID] as NVARCHAR))) END) + CAST([p].[ID] as NVARCHAR) + N'-01 20:35:44', 120) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(year, [t].[c1]) = 2010

