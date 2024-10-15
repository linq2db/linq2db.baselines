BeforeExecute
-- SqlServer.2016

SELECT
	CAST(Floor(CAST([t].[MoneyValue] AS Money)) AS Int)
FROM
	[LinqDataTypes] [t]

