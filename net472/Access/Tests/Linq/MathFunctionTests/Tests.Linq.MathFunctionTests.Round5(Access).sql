BeforeExecute
-- Access AccessOleDb

SELECT
	Iif([p].[MoneyValue] - Int([p].[MoneyValue]) = 0.5 AND Int([p].[MoneyValue]) MOD 2 = 0, -Int(-[p].[MoneyValue]), Round([p].[MoneyValue], 0))
FROM
	[LinqDataTypes] [p]
WHERE
	(Iif([p].[MoneyValue] - Int([p].[MoneyValue]) = 0.5 AND Int([p].[MoneyValue]) MOD 2 = 0, -Int(-[p].[MoneyValue]), Round([p].[MoneyValue], 0)) <> 0 OR Iif([p].[MoneyValue] - Int([p].[MoneyValue]) = 0.5 AND Int([p].[MoneyValue]) MOD 2 = 0, -Int(-[p].[MoneyValue]), Round([p].[MoneyValue], 0)) IS NULL)

