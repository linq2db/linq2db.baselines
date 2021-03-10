BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	Floor(Power(Convert(Float, [p].[MoneyValue]), 3))
FROM
	[LinqDataTypes] [p]
WHERE
	(Floor(Power(Convert(Float, [p].[MoneyValue]), 3)) <> 0 OR Floor(Power(Convert(Float, [p].[MoneyValue]), 3)) IS NULL)

