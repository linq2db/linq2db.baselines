-- SqlCe

SELECT
	CASE
		WHEN [t].[MoneyValue] >= 5.1 THEN [t].[MoneyValue]
		ELSE 5.1
	END as [c1]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[MoneyValue] <> 0 AND [t].[MoneyValue] >= 5.1 OR
	[t].[MoneyValue] < 5.1

