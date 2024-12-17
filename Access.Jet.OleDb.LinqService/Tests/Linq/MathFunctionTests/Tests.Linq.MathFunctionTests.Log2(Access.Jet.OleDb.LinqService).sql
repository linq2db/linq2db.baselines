BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t].[Value_1]
FROM
	(
		SELECT
			Int(Log([p].[MoneyValue]) / 0.69314718055994529) as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Value_1] <> 0.10000000000000001

