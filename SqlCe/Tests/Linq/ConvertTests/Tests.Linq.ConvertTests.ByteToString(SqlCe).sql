BeforeExecute
-- SqlCe

SELECT
	[p].[ID]
FROM
	[LinqDataTypes] [p]
WHERE
	Len(Convert(NVarChar(3), Convert(TinyInt, [p].[ID]))) > 0

