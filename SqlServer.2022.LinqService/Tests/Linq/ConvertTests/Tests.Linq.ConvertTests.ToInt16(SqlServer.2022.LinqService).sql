BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	[p].[MoneyValue]
FROM
	[LinqDataTypes] [p]
WHERE
	CAST(Floor([p].[MoneyValue]) AS SmallInt) > 0

