BeforeExecute
-- SqlServer.2022

SELECT
	[p_1].[c1]
FROM
	(
		SELECT
			CAST([p].[MoneyValue] AS Float) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [p_1]
WHERE
	[p_1].[c1] > 0

