BeforeExecute
-- Access AccessOleDb

SELECT
	Int(Log([p].[MoneyValue]))
FROM
	[LinqDataTypes] [p]
WHERE
	(Int(Log([p].[MoneyValue])) <> 0.10000000000000001 OR Int(Log([p].[MoneyValue])) IS NULL)

