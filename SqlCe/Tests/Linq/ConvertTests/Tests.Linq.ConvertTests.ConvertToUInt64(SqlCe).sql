-- SqlCe

SELECT
	Floor(CASE
		WHEN [p].[MoneyValue] - FLOOR([p].[MoneyValue]) = 0.5 AND (CAST(FLOOR([p].[MoneyValue]) AS Int) % 2) = 0
			THEN FLOOR([p].[MoneyValue])
		ELSE ROUND([p].[MoneyValue], 0)
	END) as [c1]
FROM
	[LinqDataTypes] [p]
WHERE
	Floor(CASE
		WHEN [p].[MoneyValue] - FLOOR([p].[MoneyValue]) = 0.5 AND (CAST(FLOOR([p].[MoneyValue]) AS Int) % 2) = 0
			THEN FLOOR([p].[MoneyValue])
		ELSE ROUND([p].[MoneyValue], 0)
	END) > 0

