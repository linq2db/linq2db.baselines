-- SqlCe

SELECT
	CASE
		WHEN [p].[MoneyValue] <> 4.5 THEN 1
		ELSE 0
	END as [c1]
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[MoneyValue] = 4.5

