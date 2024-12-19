BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[t].[Value_1]
FROM
	(
		SELECT
			Int(Tan([p].[MoneyValue] / 15) * 15) as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Value_1] <> 0.10000000000000001

