BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	[t].[c1]
FROM
	(
		SELECT
			ROUND(CAST([p].[MoneyValue] AS Float), 0) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

