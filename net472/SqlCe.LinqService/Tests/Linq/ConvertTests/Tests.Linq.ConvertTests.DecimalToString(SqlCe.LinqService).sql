BeforeExecute
-- SqlCe

SELECT
	Convert(NVarChar(31), [t].[MoneyValue])
FROM
	[LinqDataTypes] [t]
WHERE
	Len(Convert(NVarChar(31), [t].[MoneyValue])) > 0

