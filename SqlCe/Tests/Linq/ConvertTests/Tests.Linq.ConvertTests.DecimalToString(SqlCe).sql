BeforeExecute
-- SqlCe

SELECT
	Convert(NVarChar(31), [p].[MoneyValue]) as [c1]
FROM
	[LinqDataTypes] [p]
WHERE
	Len(Convert(NVarChar(31), [p].[MoneyValue])) > 0

