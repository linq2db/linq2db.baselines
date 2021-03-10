BeforeExecute
-- Access AccessOleDb

SELECT
	Int(Int([p].[MoneyValue]) * 57.295779513082323)
FROM
	[LinqDataTypes] [p]
WHERE
	(Int(Int([p].[MoneyValue]) * 57.295779513082323) <> 0.10000000000000001 OR Int(Int([p].[MoneyValue]) * 57.295779513082323) IS NULL)

