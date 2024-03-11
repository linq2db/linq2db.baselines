BeforeExecute
-- Access AccessOleDb

SELECT
	[p_1].[c1]
FROM
	(
		SELECT
			CBool([p].[MoneyValue]) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [p_1]
WHERE
	[p_1].[c1] = True

