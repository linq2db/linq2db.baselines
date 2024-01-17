﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

UPDATE
	[a_Table1]
SET
	[a_Table1].[BoolValue] = IIF((NOT EXISTS(
		SELECT
			*
		FROM
			[Parent] [x]
		WHERE
			[a_Table1].[ID] = [x].[ParentID] AND ([x].[Value1] <> 1 OR [x].[Value1] IS NULL)
	)), 1, 0)
FROM
	[Parent] [x_1]
		INNER JOIN [LinqDataTypes] [a_Table1] ON [x_1].[ParentID] = [a_Table1].[ID]
WHERE
	[x_1].[ParentID] IN (10000, 20000)

