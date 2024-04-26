BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	CASE
		WHEN [t_1].[c1] * 2 = Round([t_1].[c1] * 2, 5) AND [t_1].[c1] <> Round([t_1].[c1], 5)
			THEN Round([t_1].[c1] / 2, 5) * 2
		ELSE Round([t_1].[c1], 5)
	END
FROM
	(
		SELECT
			CASE
				WHEN CAST([t].[MoneyValue] AS Float) * 2 = Round(CAST([t].[MoneyValue] AS Float) * 2, 1) AND CAST([t].[MoneyValue] AS Float) <> Round(CAST([t].[MoneyValue] AS Float), 1)
					THEN Round(CAST([t].[MoneyValue] AS Float) / 2, 1) * 2
				ELSE Round(CAST([t].[MoneyValue] AS Float), 1)
			END as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[c1] <> 0

