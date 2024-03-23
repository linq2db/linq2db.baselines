BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[p_1].[c1]
FROM
	(
		SELECT
			Convert(BigInt, IIF([p].[MoneyValue] - Floor([p].[MoneyValue]) = 0.5 AND Floor([p].[MoneyValue]) % 2 = 0, Floor([p].[MoneyValue]), Round([p].[MoneyValue], 0))) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [p_1]
WHERE
	[p_1].[c1] > 0

