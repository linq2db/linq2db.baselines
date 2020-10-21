BeforeExecute
-- Access AccessOleDb

SELECT
	Int(Tan([p].[MoneyValue] / 15) * 15)
FROM
	[LinqDataTypes] [p]
WHERE
	(Int(Tan([p].[MoneyValue] / 15) * 15) <> 0.10000000000000001 OR Int(Tan([p].[MoneyValue] / 15) * 15) IS NULL)

