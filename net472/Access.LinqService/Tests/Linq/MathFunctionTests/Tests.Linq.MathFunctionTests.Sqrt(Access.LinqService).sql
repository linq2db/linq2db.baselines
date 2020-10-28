BeforeExecute
-- Access AccessOleDb

SELECT
	Int(Sqr([p].[MoneyValue] / 15) * 15)
FROM
	[LinqDataTypes] [p]
WHERE
	(Int(Sqr([p].[MoneyValue] / 15) * 15) <> 0.10000000000000001 OR Int(Sqr([p].[MoneyValue] / 15) * 15) IS NULL)

