BeforeExecute
-- Access AccessOleDb

SELECT
	Int(Log([p].[MoneyValue]) / 2.3025850929940459)
FROM
	[LinqDataTypes] [p]
WHERE
	(Int(Log([p].[MoneyValue]) / 2.3025850929940459) <> 0.10000000000000001 OR Int(Log([p].[MoneyValue]) / 2.3025850929940459) IS NULL)

