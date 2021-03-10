BeforeExecute
-- SqlCe

SELECT
	Convert(NVarChar(3), Convert(TinyInt, [t].[ID]))
FROM
	[LinqDataTypes] [t]
WHERE
	Len(Convert(NVarChar(3), Convert(TinyInt, [t].[ID]))) > 0

