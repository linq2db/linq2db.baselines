BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[t].[c1]
FROM
	(
		SELECT
			IIF((Convert(Float, [p].[MoneyValue]) * 2 IS NOT NULL AND Convert(Float, [p].[MoneyValue]) * 2 = Round(Convert(Float, [p].[MoneyValue]) * 2, 1)) AND (Convert(Float, [p].[MoneyValue]) IS NULL OR Convert(Float, [p].[MoneyValue]) <> Round(Convert(Float, [p].[MoneyValue]), 1)), Round(Convert(Float, [p].[MoneyValue]) / 2, 1) * 2, Round(Convert(Float, [p].[MoneyValue]), 1)) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	([t].[c1] IS NULL OR [t].[c1] <> 0)

