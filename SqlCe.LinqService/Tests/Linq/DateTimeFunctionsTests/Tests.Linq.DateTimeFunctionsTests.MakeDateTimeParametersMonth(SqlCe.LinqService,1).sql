BeforeExecute
-- SqlCe (asynchronously)
DECLARE @month Int -- Int32
SET     @month = 1

SELECT
	CAST(REPLICATE('0', 4 - LEN(CAST(2010 + [t].[ID] AS NVarChar(4)))) + CAST(2010 + [t].[ID] AS NVarChar(4)) + '-' + REPLICATE('0', 2 - LEN(CAST(@month AS NVarChar(2)))) + CAST(@month AS NVarChar(2)) + '-01' AS DateTime) as [c1]
FROM
	[LinqDataTypes] [t]

