BeforeExecute
-- Access AccessOleDb

SELECT
	Int(Exp([p].[MoneyValue]))
FROM
	[LinqDataTypes] [p]
WHERE
	(Int(Exp([p].[MoneyValue])) <> 0.10000000000000001 OR Int(Exp([p].[MoneyValue])) IS NULL)

