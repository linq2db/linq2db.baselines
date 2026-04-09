-- SqlCe

SELECT
	CASE
		WHEN [p].[MoneyValue] <> 0 THEN 1
		ELSE 0
	END as [c1]
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[MoneyValue] <> 0

