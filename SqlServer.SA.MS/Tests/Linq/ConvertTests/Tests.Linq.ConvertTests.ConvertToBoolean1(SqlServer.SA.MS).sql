BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[p_1].[c1]
FROM
	(
		SELECT
			IIF([p].[MoneyValue] <> 0, 1, 0) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [p_1]
WHERE
	[p_1].[c1] = 1

