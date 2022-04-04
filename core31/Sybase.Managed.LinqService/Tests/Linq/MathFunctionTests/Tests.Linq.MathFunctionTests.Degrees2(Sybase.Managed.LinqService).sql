BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Convert(Float, [p].[MoneyValue]) * 57.295779513082323
FROM
	[LinqDataTypes] [p]
WHERE
	Convert(Float, [p].[MoneyValue]) * 57.295779513082323 <> 0.10000000000000001

