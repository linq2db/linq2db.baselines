BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[c1]
FROM
	(
		SELECT
			IIF(CAST([p].[MoneyValue] AS Float) - FLOOR(CAST([p].[MoneyValue] AS Float)) = 0.5 AND (Convert(Int, FLOOR(CAST([p].[MoneyValue] AS Float))) % 2) = 0, FLOOR(CAST([p].[MoneyValue] AS Float)), ROUND(CAST([p].[MoneyValue] AS Float), 0)) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

