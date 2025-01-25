BeforeExecute
-- Access AccessOleDb

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			IIF([t].[MoneyValue] - Int([t].[MoneyValue]) = 0.5 AND Int([t].[MoneyValue]) MOD 2 = 0, -Int(-[t].[MoneyValue]), Round([t].[MoneyValue], 0)) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[c1] <> 0

