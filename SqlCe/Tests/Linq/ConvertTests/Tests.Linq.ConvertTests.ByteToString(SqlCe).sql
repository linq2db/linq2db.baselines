-- SqlCe

SELECT
	CAST(CAST([p].[ID] AS TinyInt) AS NVarChar(3)) as [Length_1]
FROM
	[LinqDataTypes] [p]
WHERE
	LEN(CAST(CAST([p].[ID] AS TinyInt) AS NVarChar(3)) + '.') > 1

