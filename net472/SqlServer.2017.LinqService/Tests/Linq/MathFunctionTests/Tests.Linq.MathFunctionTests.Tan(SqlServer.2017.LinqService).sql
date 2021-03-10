BeforeExecute
-- SqlServer.2017

SELECT
	Floor(Tan(Convert(Float, [p].[MoneyValue]) / 15) * 15)
FROM
	[LinqDataTypes] [p]
WHERE
	(Floor(Tan(Convert(Float, [p].[MoneyValue]) / 15) * 15) <> 0.10000000000000001 OR Floor(Tan(Convert(Float, [p].[MoneyValue]) / 15) * 15) IS NULL)

