-- SqlServer.2025.MS SqlServer.2025

UPDATE
	[u]
SET
	[u].[BoolValue] = [t1].[c1]
FROM
	[LinqDataTypes] [u],
	(
		SELECT DISTINCT
			[a_Table1].[ID],
			[a_Table1].[BoolValue],
			IIF(NOT EXISTS(
				SELECT
					*
				FROM
					[Parent] [x_1]
				WHERE
					[a_Table1].[ID] = [x_1].[ParentID] AND ([x_1].[Value1] <> 1 OR [x_1].[Value1] IS NULL)
			), 1, 0) as [c1]
		FROM
			[Parent] [x]
				INNER JOIN [LinqDataTypes] [a_Table1] ON [x].[ParentID] = [a_Table1].[ID]
		WHERE
			[x].[ParentID] IN (10000, 20000)
	) [t1]
WHERE
	[u].[ID] = [t1].[ID] AND [u].[BoolValue] = [t1].[BoolValue]

