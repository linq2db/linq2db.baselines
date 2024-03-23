BeforeExecute
-- SqlServer.2005

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
				WHEN Convert(Float, [t].[MoneyValue]) * 2 = Round(Convert(Float, [t].[MoneyValue]) * 2, 1) AND Convert(Float, [t].[MoneyValue]) <> Round(Convert(Float, [t].[MoneyValue]), 1)
					THEN Round(Convert(Float, [t].[MoneyValue]) / 2, 1) * 2
				ELSE Round(Convert(Float, [t].[MoneyValue]), 1)
			END as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[c1] <> 0

