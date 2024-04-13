BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			IIF(CAST([t].[MoneyValue] AS Float) - Floor(CAST([t].[MoneyValue] AS Float)) = 0.5 AND (Convert(Int, Floor(CAST([t].[MoneyValue] AS Float))) % 2) = 0, Floor(CAST([t].[MoneyValue] AS Float)), Round(CAST([t].[MoneyValue] AS Float), 0)) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[c1] <> 0

