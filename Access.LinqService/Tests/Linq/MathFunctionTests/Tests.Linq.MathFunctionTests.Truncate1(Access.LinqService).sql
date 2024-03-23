BeforeExecute
-- Access AccessOleDb

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			IIF([t].[MoneyValue] >= 0, Int([t].[MoneyValue]), -Int(-[t].[MoneyValue])) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[c1] <> 0.1

