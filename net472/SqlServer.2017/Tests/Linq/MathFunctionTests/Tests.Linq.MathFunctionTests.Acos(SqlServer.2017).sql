BeforeExecute
-- SqlServer.2017

SELECT
	Floor(Acos(Convert(Float, [p].[MoneyValue]) / 15) * 15)
FROM
	[LinqDataTypes] [p]
WHERE
	(Floor(Acos(Convert(Float, [p].[MoneyValue]) / 15) * 15) <> 0.10000000000000001 OR Floor(Acos(Convert(Float, [p].[MoneyValue]) / 15) * 15) IS NULL)

