BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	Floor(Sqrt(Convert(Float, [p].[MoneyValue]) / 15) * 15)
FROM
	[LinqDataTypes] [p]
WHERE
	(Floor(Sqrt(Convert(Float, [p].[MoneyValue]) / 15) * 15) <> 0.10000000000000001 OR Floor(Sqrt(Convert(Float, [p].[MoneyValue]) / 15) * 15) IS NULL)

