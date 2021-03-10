BeforeExecute
-- Access AccessOleDb

SELECT
	Int(((Exp([p].[MoneyValue] / 15) - Exp(-([p].[MoneyValue] / 15))) / 2) * 15)
FROM
	[LinqDataTypes] [p]
WHERE
	(Int(((Exp([p].[MoneyValue] / 15) - Exp(-([p].[MoneyValue] / 15))) / 2) * 15) <> 0.10000000000000001 OR Int(((Exp([p].[MoneyValue] / 15) - Exp(-([p].[MoneyValue] / 15))) / 2) * 15) IS NULL)

