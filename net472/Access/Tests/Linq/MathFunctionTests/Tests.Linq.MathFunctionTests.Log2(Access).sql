BeforeExecute
-- Access AccessOleDb

SELECT
	Int(Log([p].[MoneyValue]) / 0.69314718055994529)
FROM
	[LinqDataTypes] [p]
WHERE
	(Int(Log([p].[MoneyValue]) / 0.69314718055994529) <> 0.10000000000000001 OR Int(Log([p].[MoneyValue]) / 0.69314718055994529) IS NULL)

