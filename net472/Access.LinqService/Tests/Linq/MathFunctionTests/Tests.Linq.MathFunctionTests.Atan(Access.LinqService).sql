BeforeExecute
-- Access AccessOleDb

SELECT
	Int(Atn([p].[MoneyValue] / 15) * 15)
FROM
	[LinqDataTypes] [p]
WHERE
	(Int(Atn([p].[MoneyValue] / 15) * 15) <> 0.10000000000000001 OR Int(Atn([p].[MoneyValue] / 15) * 15) IS NULL)

