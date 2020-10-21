BeforeExecute
-- Access AccessOleDb

SELECT
	Iif([p].[MoneyValue] > 5.1, [p].[MoneyValue], 5.1)
FROM
	[LinqDataTypes] [p]
WHERE
	(Iif([p].[MoneyValue] > 5.1, [p].[MoneyValue], 5.1) <> 0 OR Iif([p].[MoneyValue] > 5.1, [p].[MoneyValue], 5.1) IS NULL)

