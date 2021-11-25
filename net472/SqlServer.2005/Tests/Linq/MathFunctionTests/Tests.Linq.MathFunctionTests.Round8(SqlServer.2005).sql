BeforeExecute
-- SqlServer.2005

SELECT
	CASE
		WHEN Convert(Float, [p].[MoneyValue]) - Floor(Convert(Float, [p].[MoneyValue])) = 0.5 AND (Convert(Int, Floor(Convert(Float, [p].[MoneyValue]))) % 2) = 0
			THEN Floor(Convert(Float, [p].[MoneyValue]))
		ELSE Round(Convert(Float, [p].[MoneyValue]), 0)
	END
FROM
	[LinqDataTypes] [p]
WHERE
	CASE
		WHEN Convert(Float, [p].[MoneyValue]) - Floor(Convert(Float, [p].[MoneyValue])) = 0.5 AND (Convert(Int, Floor(Convert(Float, [p].[MoneyValue]))) % 2) = 0
			THEN Floor(Convert(Float, [p].[MoneyValue]))
		ELSE Round(Convert(Float, [p].[MoneyValue]), 0)
	END <> 0

