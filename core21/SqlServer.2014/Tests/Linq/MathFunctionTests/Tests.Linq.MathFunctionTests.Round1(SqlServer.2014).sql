BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[t].[c1]
FROM
	(
		SELECT
			IIF([p].[MoneyValue] - Floor([p].[MoneyValue]) = 0.5 AND Floor([p].[MoneyValue]) % 2 = 0, Floor([p].[MoneyValue]), Round([p].[MoneyValue], 0)) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

