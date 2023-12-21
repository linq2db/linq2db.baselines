BeforeExecute
-- SqlServer.2008

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Convert(Date, N'2010-' + REPLICATE('0', CASE WHEN LEN(CAST([p].[ID] as NVARCHAR)) > 2 THEN 0 ELSE (2 - LEN(CAST([p].[ID] as NVARCHAR))) END) + CAST([p].[ID] as NVARCHAR) + N'-01') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(year, [t].[c1]) = 2010

