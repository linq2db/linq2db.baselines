BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Convert(Float, Convert(Int, [p].[MoneyValue])) * 57.295779513082323
FROM
	[LinqDataTypes] [p]
WHERE
	(Convert(Float, Convert(Float, Convert(Int, [p].[MoneyValue])) * 57.295779513082323) <> 0.10000000000000001 OR Convert(Float, Convert(Float, Convert(Int, [p].[MoneyValue])) * 57.295779513082323) IS NULL)

