BeforeExecute
-- SqlServer.2014 SqlServer.2012

UPDATE
	[a_Table1]
SET
	[a_Table1].[BoolValue] = CASE WHEN (NOT EXISTS(
		SELECT
			*
		FROM
			[Parent] [x]
		WHERE
			[a_Table1].[ID] = [x].[ParentID] AND NOT ([x].[Value1] IS NOT NULL AND [x].[Value1] = 1)
	)) THEN 1 ELSE 0 END
FROM
	[Parent] [x_1]
		INNER JOIN [LinqDataTypes] [a_Table1] ON [x_1].[ParentID] = [a_Table1].[ID]
WHERE
	[x_1].[ParentID] IN (10000, 20000)

