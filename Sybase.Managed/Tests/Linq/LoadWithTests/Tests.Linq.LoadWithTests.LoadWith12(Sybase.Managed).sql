﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[lw_Parent].[ParentID_1],
	[lw_Parent].[Value1],
	[lw_Parent].[ParentID_2],
	[lw_Parent].[ChildID],
	[detail_1].[ParentID],
	[detail_1].[ChildID]
FROM
	(
		SELECT DISTINCT
			[a_Parent].[ParentID],
			[key_data_result].[ParentID] as [ParentID_1],
			[key_data_result].[Value1],
			[detail].[ParentID] as [ParentID_2],
			[detail].[ChildID]
		FROM
			(
				SELECT DISTINCT
					[t1].[ParentID],
					[t1].[Value1]
				FROM
					(
						SELECT TOP 1
							[p].[ParentID],
							[p].[Value1]
						FROM
							[Parent] [p]
						WHERE
							[p].[ParentID] < 2
					) [t1]
			) [key_data_result]
				INNER JOIN [Child] [detail] ON [key_data_result].[ParentID] = [detail].[ParentID]
				LEFT JOIN [Parent] [a_Parent] ON [detail].[ParentID] = [a_Parent].[ParentID]
	) [lw_Parent]
		INNER JOIN [Child] [detail_1] ON [lw_Parent].[ParentID] = [detail_1].[ParentID]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[key_data_result].[ParentID],
	[key_data_result].[Value1],
	[detail].[ParentID],
	[detail].[ChildID],
	[a_Parent].[ParentID],
	[a_Parent].[Value1]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID],
			[t1].[Value1]
		FROM
			(
				SELECT TOP 1
					[p].[ParentID],
					[p].[Value1]
				FROM
					[Parent] [p]
				WHERE
					[p].[ParentID] < 2
			) [t1]
	) [key_data_result]
		INNER JOIN [Child] [detail] ON [key_data_result].[ParentID] = [detail].[ParentID]
		LEFT JOIN [Parent] [a_Parent] ON [detail].[ParentID] = [a_Parent].[ParentID]

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] < 2

BeforeExecute
DisposeTransaction
