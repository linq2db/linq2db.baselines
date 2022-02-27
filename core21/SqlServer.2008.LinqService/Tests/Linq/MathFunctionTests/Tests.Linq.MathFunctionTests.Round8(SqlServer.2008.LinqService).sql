BeforeExecute
-- SqlServer.2008

SELECT
	[t].[c1]
FROM
	(
		SELECT
			CASE
				WHEN Convert(Float, [p].[MoneyValue]) - Floor(Convert(Float, [p].[MoneyValue])) = 0.5 AND (Convert(Int, Floor(Convert(Float, [p].[MoneyValue]))) % 2) = 0
					THEN Floor(Convert(Float, [p].[MoneyValue]))
				ELSE Round(Convert(Float, [p].[MoneyValue]), 0)
			END as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	([t].[c1] IS NULL OR [t].[c1] <> 0)

