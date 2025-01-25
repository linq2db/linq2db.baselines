BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[p_1].[c1]
FROM
	(
		SELECT
			CAST(Floor(IIF([p].[MoneyValue] - Floor([p].[MoneyValue]) = 0.5 AND Floor([p].[MoneyValue]) % 2 = 0, Floor([p].[MoneyValue]), Round([p].[MoneyValue], 0))) AS TinyInt) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [p_1]
WHERE
	[p_1].[c1] > 0

