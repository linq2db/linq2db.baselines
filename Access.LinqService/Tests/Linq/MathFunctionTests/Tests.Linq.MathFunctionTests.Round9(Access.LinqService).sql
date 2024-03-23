BeforeExecute
-- Access AccessOleDb

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			IIF([t].[MoneyValue] * 10 - Int([t].[MoneyValue] * 10) = 0.5 AND Int([t].[MoneyValue] * 10) MOD 2 = 0, -Int(-([t].[MoneyValue] * 10)), Round([t].[MoneyValue] * 10, 0)) / 10 as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[c1] <> 0

