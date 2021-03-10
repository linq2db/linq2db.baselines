BeforeExecute
-- Access AccessOleDb

SELECT
	Iif([p].[MoneyValue] * 10 - Int([p].[MoneyValue] * 10) = 0.5 AND Int([p].[MoneyValue] * 10) MOD 2 = 0, -Int(-([p].[MoneyValue] * 10)), Round([p].[MoneyValue] * 10, 0)) / 10
FROM
	[LinqDataTypes] [p]
WHERE
	Iif([p].[MoneyValue] * 10 - Int([p].[MoneyValue] * 10) = 0.5 AND Int([p].[MoneyValue] * 10) MOD 2 = 0, -Int(-([p].[MoneyValue] * 10)), Round([p].[MoneyValue] * 10, 0)) / 10 <> 0

