BeforeExecute
-- SqlServer.2017

SELECT
	[t].[c1]
FROM
	(
		SELECT
			IIF(Convert(Float, [p].[MoneyValue]) * 2 = Round(Convert(Float, [p].[MoneyValue]) * 2, 1) AND (Convert(Float, [p].[MoneyValue]) <> Round(Convert(Float, [p].[MoneyValue]), 1) OR Convert(Float, [p].[MoneyValue]) IS NULL AND Round(Convert(Float, [p].[MoneyValue]), 1) IS NOT NULL OR Convert(Float, [p].[MoneyValue]) IS NOT NULL AND Round(Convert(Float, [p].[MoneyValue]), 1) IS NULL), Round(Convert(Float, [p].[MoneyValue]) / 2, 1) * 2, Round(Convert(Float, [p].[MoneyValue]), 1)) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	([t].[c1] <> 0 OR [t].[c1] IS NULL)

