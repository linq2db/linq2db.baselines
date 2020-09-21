BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[p].[c1]
FROM
	(
		SELECT
			Convert(SmallInt, IIF([t].[MoneyValue] - Floor([t].[MoneyValue]) = 0.5 AND Floor([t].[MoneyValue]) % 2 = 0, Floor([t].[MoneyValue]), Round([t].[MoneyValue], 0))) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[c1] > 0

