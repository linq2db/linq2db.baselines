BeforeExecute
-- Access AccessOleDb

SELECT
	Iif([p].[MoneyValue] < 5, [p].[MoneyValue], 5)
FROM
	[LinqDataTypes] [p]
WHERE
	Iif([p].[MoneyValue] < 5, [p].[MoneyValue], 5) <> 0

