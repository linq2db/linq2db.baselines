BeforeExecute
-- Access AccessOleDb

SELECT
	[t].[MoneyValue] - 4.5
FROM
	[LinqDataTypes] [t]
WHERE
	([t].[MoneyValue] - 4.5 = False OR [t].[MoneyValue] - 4.5 IS NULL)

