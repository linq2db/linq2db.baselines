BeforeExecute
-- Access AccessOleDb

SELECT
	CStr([t].[MoneyValue])
FROM
	[LinqDataTypes] [t]
WHERE
	Len(CStr([t].[MoneyValue])) > 0

