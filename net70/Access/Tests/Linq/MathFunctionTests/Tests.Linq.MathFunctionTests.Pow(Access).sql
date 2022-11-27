BeforeExecute
-- Access AccessOleDb

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Int([p].[MoneyValue] ^ 3) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

