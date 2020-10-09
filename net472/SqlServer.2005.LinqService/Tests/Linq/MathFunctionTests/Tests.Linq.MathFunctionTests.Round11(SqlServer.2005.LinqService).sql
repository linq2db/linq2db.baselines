BeforeExecute
-- SqlServer.2005

SELECT 
	[t].[c1]
FROM
	( 
		SELECT 
			CASE
				WHEN (Convert(Float, [p].[MoneyValue]) * 2 IS NOT NULL AND Convert(Float, [p].[MoneyValue]) * 2 = Round(Convert(Float, [p].[MoneyValue]) * 2, 1)) AND (Convert(Float, [p].[MoneyValue]) IS NULL OR Convert(Float, [p].[MoneyValue]) <> Round(Convert(Float, [p].[MoneyValue]), 1))
					THEN Round(Convert(Float, [p].[MoneyValue]) / 2, 1) * 2
				ELSE Round(Convert(Float, [p].[MoneyValue]), 1)
			END as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	([t].[c1] IS NULL OR [t].[c1] <> 0)

