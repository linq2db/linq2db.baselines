BeforeExecute
-- SqlServer.2019

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			IIF(Convert(Float, [t].[MoneyValue]) - Floor(Convert(Float, [t].[MoneyValue])) = 0.5 AND (Convert(Int, Floor(Convert(Float, [t].[MoneyValue]))) % 2) = 0, Floor(Convert(Float, [t].[MoneyValue])), Round(Convert(Float, [t].[MoneyValue]), 0)) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	([t_1].[c1] <> 0 OR [t_1].[c1] IS NULL)

