BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[p].[c1]
FROM
	(
		SELECT
			Convert(Int, IIF([t].[MoneyValue] - Floor([t].[MoneyValue]) = 0.5 AND Floor([t].[MoneyValue]) % 2 = 0, Floor([t].[MoneyValue]), Round([t].[MoneyValue], 0))) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[c1] > 0

