BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = N'2010-'

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Convert(Date, @p + REPLICATE('0', CASE WHEN LEN(CAST([p].[ID] as NVARCHAR)) > 2 THEN 0 ELSE (2 - LEN(CAST([p].[ID] as NVARCHAR))) END) + CAST([p].[ID] as NVARCHAR) + N'-01') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(year, [t].[c1]) = 2010

