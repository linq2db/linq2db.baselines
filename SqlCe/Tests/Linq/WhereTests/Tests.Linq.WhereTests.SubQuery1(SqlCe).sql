-- SqlCe

SELECT
	CASE
		WHEN [pp].[MoneyValue] * 2 = ROUND([pp].[MoneyValue] * 2, 2) AND [pp].[MoneyValue] <> ROUND([pp].[MoneyValue], 2)
			THEN ROUND([pp].[MoneyValue] / 2, 2) * 2
		ELSE ROUND([pp].[MoneyValue], 2)
	END as [Value_1]
FROM
	[LinqDataTypes] [pp]
WHERE
	CASE
		WHEN [pp].[MoneyValue] * 2 = ROUND([pp].[MoneyValue] * 2, 2) AND [pp].[MoneyValue] <> ROUND([pp].[MoneyValue], 2)
			THEN ROUND([pp].[MoneyValue] / 2, 2) * 2
		ELSE ROUND([pp].[MoneyValue], 2)
	END <> 0 AND
	CASE
		WHEN [pp].[MoneyValue] * 2 = ROUND([pp].[MoneyValue] * 2, 2) AND [pp].[MoneyValue] <> ROUND([pp].[MoneyValue], 2)
			THEN ROUND([pp].[MoneyValue] / 2, 2) * 2
		ELSE ROUND([pp].[MoneyValue], 2)
	END <> 7

