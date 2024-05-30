BeforeExecute
-- Access AccessOleDb

SELECT
	[e].[ID],
	[p_1].[SmallIntValue]
FROM
	(
		SELECT DISTINCT
			[t1].[ID],
			[t1].[SmallIntValue]
		FROM
			[LinqDataTypes] [t1]
	) [e]
		LEFT JOIN (
			SELECT DISTINCT
				[p].[ID],
				[p].[SmallIntValue]
			FROM
				[LinqDataTypes] [p]
		) [p_1] ON ([p_1].[ID] = [e].[ID])

