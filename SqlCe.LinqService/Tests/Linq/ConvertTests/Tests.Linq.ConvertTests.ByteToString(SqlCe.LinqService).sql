BeforeExecute
-- SqlCe

SELECT
	CAST(CAST([p].[ID] AS TinyInt) AS NVarChar(3)) as [c1]
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CAST(CAST([p].[ID] AS TinyInt) AS NVarChar(3))) > 0

