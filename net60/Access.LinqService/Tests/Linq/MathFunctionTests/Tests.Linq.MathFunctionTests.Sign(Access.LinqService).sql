BeforeExecute
-- Access AccessOleDb

SELECT
	Sgn([p].[MoneyValue])
FROM
	[LinqDataTypes] [p]
WHERE
	Sgn([p].[MoneyValue]) <> 0

