-- SqlCe

SELECT
	CASE
		WHEN [t].[MoneyValue] <= 5 THEN [t].[MoneyValue]
		ELSE 5
	END as [c1]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[MoneyValue] <> 0 AND [t].[MoneyValue] <= 5 OR
	[t].[MoneyValue] > 5

