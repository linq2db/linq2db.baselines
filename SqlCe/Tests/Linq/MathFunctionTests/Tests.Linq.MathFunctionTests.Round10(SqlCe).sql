-- SqlCe

SELECT
	CASE
		WHEN [t].[MoneyValue] * 2 = ROUND([t].[MoneyValue] * 2, 1) AND [t].[MoneyValue] <> ROUND([t].[MoneyValue], 1)
			THEN ROUND([t].[MoneyValue] / 2, 1) * 2
		ELSE ROUND([t].[MoneyValue], 1)
	END as [c1]
FROM
	[LinqDataTypes] [t]
WHERE
	CASE
		WHEN [t].[MoneyValue] * 2 = ROUND([t].[MoneyValue] * 2, 1) AND [t].[MoneyValue] <> ROUND([t].[MoneyValue], 1)
			THEN ROUND([t].[MoneyValue] / 2, 1) * 2
		ELSE ROUND([t].[MoneyValue], 1)
	END <> 0 AND
	CASE
		WHEN [t].[MoneyValue] * 2 = ROUND([t].[MoneyValue] * 2, 1) AND [t].[MoneyValue] <> ROUND([t].[MoneyValue], 1)
			THEN ROUND([t].[MoneyValue] / 2, 1) * 2
		ELSE ROUND([t].[MoneyValue], 1)
	END <> 7

