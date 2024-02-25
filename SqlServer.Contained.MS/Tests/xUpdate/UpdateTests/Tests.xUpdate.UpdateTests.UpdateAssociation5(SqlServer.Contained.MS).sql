BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

UPDATE
	[u]
SET
	[u].[BoolValue] = IIF(NOT EXISTS(
		SELECT
			*
		FROM
			[Parent] [x_1]
		WHERE
			([x_1].[Value1] <> 1 OR [x_1].[Value1] IS NULL) AND
			[t1].[BoolValue] IS NOT NULL AND [t1].[ID] = [x_1].[ParentID]
	), 1, 0)
FROM
	[LinqDataTypes] [u],
	(
		SELECT DISTINCT
			[a_Table1].[BoolValue],
			[a_Table1].[ID]
		FROM
			[Parent] [x]
				INNER JOIN [LinqDataTypes] [a_Table1] ON [x].[ParentID] = [a_Table1].[ID]
		WHERE
			[x].[ParentID] IN (10000, 20000)
	) [t1]
WHERE
	[t1].[BoolValue] = [u].[BoolValue] AND [t1].[ID] = [u].[ID]

