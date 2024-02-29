BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	Round(Convert(Float, -[p].[MoneyValue]), 0, 1)
FROM
	[LinqDataTypes] [p]
WHERE
	Round(Convert(Float, -[p].[MoneyValue]), 0, 1) <> 0.10000000000000001

