BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	Round(Convert(Float, -[p].[MoneyValue]), 0, 1)
FROM
	[LinqDataTypes] [p]
WHERE
	Round(Convert(Float, -[p].[MoneyValue]), 0, 1) <> 0.10000000000000001

