BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[t].[c1]
FROM
	(
		SELECT
			IIF(Convert(Float, [p].[MoneyValue]) - Floor(Convert(Float, [p].[MoneyValue])) = 0.5 AND (Convert(Int, Floor(Convert(Float, [p].[MoneyValue]))) % 2) = 0, Floor(Convert(Float, [p].[MoneyValue])), Round(Convert(Float, [p].[MoneyValue]), 0)) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

