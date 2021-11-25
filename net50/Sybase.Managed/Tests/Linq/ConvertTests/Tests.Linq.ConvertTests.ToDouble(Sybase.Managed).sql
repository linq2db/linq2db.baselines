BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Convert(Int, Convert(Float, [t].[MoneyValue]))
FROM
	[LinqDataTypes] [t]
WHERE
	Convert(Int, Convert(Float, [t].[MoneyValue])) > 0

