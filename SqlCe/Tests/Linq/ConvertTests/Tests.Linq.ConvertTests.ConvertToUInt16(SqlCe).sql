-- SqlCe

SELECT
	CAST(CASE
		WHEN [p].[MoneyValue] - FLOOR([p].[MoneyValue]) = 0.5 AND (CAST(FLOOR([p].[MoneyValue]) AS Int) % 2) = 0
			THEN FLOOR([p].[MoneyValue])
		ELSE ROUND([p].[MoneyValue], 0)
	END AS Int) as [c1]
FROM
	[LinqDataTypes] [p]
WHERE
	CAST(CASE
		WHEN [p].[MoneyValue] - FLOOR([p].[MoneyValue]) = 0.5 AND (CAST(FLOOR([p].[MoneyValue]) AS Int) % 2) = 0
			THEN FLOOR([p].[MoneyValue])
		ELSE ROUND([p].[MoneyValue], 0)
	END AS Int) > 0

