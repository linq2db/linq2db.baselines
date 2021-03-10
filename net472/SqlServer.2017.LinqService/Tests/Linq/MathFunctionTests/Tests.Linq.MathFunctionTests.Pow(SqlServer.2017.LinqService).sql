BeforeExecute
-- SqlServer.2017

SELECT
	Floor(Power(Convert(Float, [p].[MoneyValue]), 3))
FROM
	[LinqDataTypes] [p]
WHERE
	(Floor(Power(Convert(Float, [p].[MoneyValue]), 3)) <> 0 OR Floor(Power(Convert(Float, [p].[MoneyValue]), 3)) IS NULL)

