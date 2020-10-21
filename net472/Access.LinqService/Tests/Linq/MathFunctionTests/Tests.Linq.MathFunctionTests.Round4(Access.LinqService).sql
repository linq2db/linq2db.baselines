BeforeExecute
-- Access AccessOleDb

SELECT
	Round([p].[MoneyValue], 1)
FROM
	[LinqDataTypes] [p]
WHERE
	(Round([p].[MoneyValue], 1) <> 0 OR Round([p].[MoneyValue], 1) IS NULL)

