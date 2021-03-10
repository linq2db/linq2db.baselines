BeforeExecute
-- Access AccessOleDb

SELECT
	Int(Sin([p].[MoneyValue] / 15) * 15)
FROM
	[LinqDataTypes] [p]
WHERE
	(Int(Sin([p].[MoneyValue] / 15) * 15) <> 0.10000000000000001 OR Int(Sin([p].[MoneyValue] / 15) * 15) IS NULL)

