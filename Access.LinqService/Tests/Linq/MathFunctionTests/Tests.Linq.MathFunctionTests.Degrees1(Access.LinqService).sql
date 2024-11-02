BeforeExecute
-- Access AccessOleDb

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Int([p].[MoneyValue] * 57.29577951308237993927443245) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0.1

