BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[p].[c1]
FROM
	(
		SELECT
			Convert(TinyInt, [t].[MoneyValue]) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[c1] > 0

