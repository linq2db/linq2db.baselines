BeforeExecute
-- Access AccessOleDb

SELECT
	[p].[c1]
FROM
	(
		SELECT
			[t].[MoneyValue] - 4.5 as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	([p].[c1] = False OR [p].[c1] IS NULL)

