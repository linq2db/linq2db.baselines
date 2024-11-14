BeforeExecute
-- SqlCe
DECLARE @year Int -- Int32
SET     @year = 2010

SELECT
	[t].[c1]
FROM
	(
		SELECT
			CAST(REPLICATE('0', 4 - LEN(CAST(@year AS NVarChar(4)))) + CAST(@year AS NVarChar(4)) + '-' + REPLICATE('0', 2 - LEN(CAST([p].[ID] AS NVarChar(2)))) + CAST([p].[ID] AS NVarChar(2)) + '-01' AS DateTime) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(year, [t].[c1]) = 2010

