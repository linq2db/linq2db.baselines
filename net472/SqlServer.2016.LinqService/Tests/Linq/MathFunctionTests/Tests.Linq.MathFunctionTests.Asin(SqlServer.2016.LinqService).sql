BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	Floor(Asin(Convert(Float, [p].[MoneyValue]) / 15) * 15)
FROM
	[LinqDataTypes] [p]
WHERE
	(Floor(Asin(Convert(Float, [p].[MoneyValue]) / 15) * 15) <> 0.10000000000000001 OR Floor(Asin(Convert(Float, [p].[MoneyValue]) / 15) * 15) IS NULL)

