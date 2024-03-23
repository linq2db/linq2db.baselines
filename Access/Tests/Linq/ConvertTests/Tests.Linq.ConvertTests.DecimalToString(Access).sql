BeforeExecute
-- Access AccessOleDb

SELECT
	[p].[MoneyValue]
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CStr([p].[MoneyValue])) > 0

