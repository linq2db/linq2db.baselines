BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	Int([t].[Value_1])
FROM
	(
		SELECT
			[p].[MoneyValue] * 57.295779513082323 as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Value_1] <> 0.10000000000000001

