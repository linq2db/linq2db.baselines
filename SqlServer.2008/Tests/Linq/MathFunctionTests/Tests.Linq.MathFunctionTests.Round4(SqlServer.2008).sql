BeforeExecute
-- SqlServer.2008

SELECT
	[t_1].[c1]
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

