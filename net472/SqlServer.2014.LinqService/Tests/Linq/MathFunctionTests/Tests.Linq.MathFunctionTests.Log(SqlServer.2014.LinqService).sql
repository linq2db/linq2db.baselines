BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	Floor(Log(Convert(Float, [p].[MoneyValue])))
FROM
	[LinqDataTypes] [p]
WHERE
	(Floor(Log(Convert(Float, [p].[MoneyValue]))) <> 0.10000000000000001 OR Floor(Log(Convert(Float, [p].[MoneyValue]))) IS NULL)

