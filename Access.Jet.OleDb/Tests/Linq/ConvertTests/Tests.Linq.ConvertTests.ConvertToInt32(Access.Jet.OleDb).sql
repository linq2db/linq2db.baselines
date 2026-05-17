-- Access.Jet.OleDb AccessOleDb

SELECT
	[p].[c1]
FROM
	(
		SELECT
			IIF(ABS([t].[MoneyValue] * 10 MOD 10) = 5 AND [t].[MoneyValue] MOD 2 = 2, [t].[MoneyValue], ROUND([t].[MoneyValue])) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[c1] > 0

