BeforeExecute
-- Sybase.Managed Sybase

SELECT
	CASE
		WHEN Convert(Float, -[p].[MoneyValue]) >= 0
			THEN Floor(Convert(Float, -[p].[MoneyValue]))
		ELSE Ceiling(Convert(Float, -[p].[MoneyValue]))
	END
FROM
	[LinqDataTypes] [p]
WHERE
	CASE
		WHEN Convert(Float, -[p].[MoneyValue]) >= 0
			THEN Floor(Convert(Float, -[p].[MoneyValue]))
		ELSE Ceiling(Convert(Float, -[p].[MoneyValue]))
	END <> 0.10000000000000001

