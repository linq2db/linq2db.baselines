BeforeExecute
-- Access AccessOleDb

SELECT
	[pp_1].[Value_1]
FROM
	(
		SELECT
			Round([pp].[MoneyValue], 2) as [Value_1]
		FROM
			[LinqDataTypes] [pp]
	) [pp_1]
WHERE
	[pp_1].[Value_1] <> 0 AND [pp_1].[Value_1] <> 7

