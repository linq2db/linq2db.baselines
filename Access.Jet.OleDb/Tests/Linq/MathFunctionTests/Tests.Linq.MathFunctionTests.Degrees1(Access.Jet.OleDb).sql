-- Access.Jet.OleDb AccessOleDb
SELECT
	[t].[Value_1]
FROM
	(
		SELECT
			Int([p].[MoneyValue] * 57.295779513082320876798154814) as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Value_1] <> 0.1

