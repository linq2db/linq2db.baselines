BeforeExecute
-- Access AccessOleDb

SELECT
	Int(Cos([p].[MoneyValue] / 15) * 15)
FROM
	[LinqDataTypes] [p]
WHERE
	(Int(Cos([p].[MoneyValue] / 15) * 15) <> 0.10000000000000001 OR Int(Cos([p].[MoneyValue] / 15) * 15) IS NULL)

