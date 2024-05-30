BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			Round(CAST(-[t].[MoneyValue] AS Float), 0, 1) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[c1] <> 0.10000000000000001

