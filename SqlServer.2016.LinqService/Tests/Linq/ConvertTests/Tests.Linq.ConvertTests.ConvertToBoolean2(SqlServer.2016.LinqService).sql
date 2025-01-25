BeforeExecute
-- SqlServer.2016

SELECT
	[p_1].[c1]
FROM
	(
		SELECT
			IIF([p].[MoneyValue] <> 4.5, 1, 0) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [p_1]
WHERE
	[p_1].[c1] = 0

