BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

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
		OUTER APPLY (
			SELECT DISTINCT
				[p].[ID],
				[p].[SmallIntValue]
			FROM
				[LinqDataTypes] [p]
			WHERE
				[p].[ID] = [e].[ID]
		) [p_1]

