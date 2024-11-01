BeforeExecute
-- Access AccessOleDb

SELECT
	Replace(CStr([p].[MoneyValue]), ',', '.')
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CStr([p].[MoneyValue])) > 0

