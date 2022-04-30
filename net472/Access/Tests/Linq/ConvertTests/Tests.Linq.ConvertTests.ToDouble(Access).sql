BeforeExecute
-- Access AccessOleDb

SELECT
	[p].[c1]
FROM
	(
		SELECT
			[t].[MoneyValue] as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[c1] > 0

