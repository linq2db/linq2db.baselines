BeforeExecute
-- SqlServer.2022

UPDATE
	[u]
SET
	[u].[BoolValue] = IIF(NOT EXISTS(
		SELECT
			*
		FROM
			[Parent] [x_1]
		WHERE
			[t1].[ID] = [x_1].[ParentID] AND ([x_1].[Value1] <> 1 OR [x_1].[Value1] IS NULL)
	), 1, 0)
FROM
	[LinqDataTypes] [u],
	(
		SELECT DISTINCT
			[a_Table1].[ID],
			[a_Table1].[BoolValue]
		FROM
			[Parent] [x]
				INNER JOIN [LinqDataTypes] [a_Table1] ON [x].[ParentID] = [a_Table1].[ID]
		WHERE
			[x].[ParentID] IN (10000, 20000)
	) [t1]
WHERE
	[u].[ID] = [t1].[ID] AND IIF([u].[BoolValue] = 1, 1, 0) = IIF([t1].[BoolValue] = 1, 1, 0)

