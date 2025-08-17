BeforeExecute
-- SqlCe (asynchronously)
DECLARE @year Int -- Int32
SET     @year = 2010

SELECT
	CAST(REPLICATE('0', 4 - LEN(CAST(@year AS NVarChar(4)))) + CAST(@year AS NVarChar(4)) + '-' + REPLICATE('0', 2 - LEN(CAST([t].[ID] AS NVarChar(2)))) + CAST([t].[ID] AS NVarChar(2)) + '-01' AS DateTime) as [c1]
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(year, CAST(REPLICATE('0', 4 - LEN(CAST(@year AS NVarChar(4)))) + CAST(@year AS NVarChar(4)) + '-' + REPLICATE('0', 2 - LEN(CAST([t].[ID] AS NVarChar(2)))) + CAST([t].[ID] AS NVarChar(2)) + '-01' AS DateTime)) = 2010

