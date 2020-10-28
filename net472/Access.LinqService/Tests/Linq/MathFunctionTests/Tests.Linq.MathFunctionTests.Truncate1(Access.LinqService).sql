BeforeExecute
-- Access AccessOleDb

SELECT
	Iif([p].[MoneyValue] >= 0, Int([p].[MoneyValue]), -Int(-[p].[MoneyValue]))
FROM
	[LinqDataTypes] [p]
WHERE
	(Iif([p].[MoneyValue] >= 0, Int([p].[MoneyValue]), -Int(-[p].[MoneyValue])) <> 0.1 OR Iif([p].[MoneyValue] >= 0, Int([p].[MoneyValue]), -Int(-[p].[MoneyValue])) IS NULL)

