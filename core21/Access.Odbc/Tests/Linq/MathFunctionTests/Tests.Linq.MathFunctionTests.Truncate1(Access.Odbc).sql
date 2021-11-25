BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Iif([p].[MoneyValue] >= 0, Int([p].[MoneyValue]), -Int(-[p].[MoneyValue]))
FROM
	[LinqDataTypes] [p]
WHERE
	Iif([p].[MoneyValue] >= 0, Int([p].[MoneyValue]), -Int(-[p].[MoneyValue])) <> 0.1

