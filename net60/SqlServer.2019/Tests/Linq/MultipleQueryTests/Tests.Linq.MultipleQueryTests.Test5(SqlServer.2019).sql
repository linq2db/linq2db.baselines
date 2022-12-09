﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2019

SELECT
	[key_data_result].[c1],
	[key_data_result].[ParentID],
	[key_data_result].[ChildID],
	[detail].[ParentID],
	[detail].[Value1]
FROM
	(
		SELECT DISTINCT
			[a_Parent].[ParentID] as [c1],
			[ch].[ParentID],
			[ch].[ChildID]
		FROM
			[Child] [ch]
				LEFT JOIN [Parent] [a_Parent] ON [ch].[ParentID] = [a_Parent].[ParentID]
	) [key_data_result]
		INNER JOIN [Parent] [detail] ON [detail].[ParentID] = [key_data_result].[c1]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2019

SELECT
	[a_Parent].[ParentID],
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
		LEFT JOIN [Parent] [a_Parent] ON [ch].[ParentID] = [a_Parent].[ParentID]
ORDER BY
	[ch].[ChildID]

