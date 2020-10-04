BeforeExecute
-- Access AccessOleDb

SELECT
	[pp].[Value_1]
FROM
	(
		SELECT
			Round([p].[MoneyValue], 2) as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [pp]
WHERE
	[pp].[Value_1] <> 0 AND [pp].[Value_1] <> 7

