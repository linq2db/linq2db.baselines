BeforeExecute
-- Sybase.Managed Sybase

UPDATE
	[LinqDataTypes]
SET
	[a_Table1].[BoolValue] = CASE
		WHEN (NOT EXISTS(
			SELECT
				*
			FROM
				[Parent] [x]
			WHERE
				[a_Table1].[ID] = [x].[ParentID] AND ([x].[Value1] <> 1 OR [x].[Value1] IS NULL)
		))
			THEN 1
		ELSE 0
	END
FROM
	[LinqDataTypes] [a_Table1],
	[Parent] [x_1]
WHERE
	[x_1].[ParentID] IN (10000, 20000) AND [x_1].[ParentID] = [a_Table1].[ID]

