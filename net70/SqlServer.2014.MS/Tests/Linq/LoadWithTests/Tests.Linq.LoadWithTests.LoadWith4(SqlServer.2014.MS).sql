﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[lw_Parent].[ParentID],
	[detail].[ParentID],
	[detail].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			[Parent] [t1]
	) [lw_Parent]
		INNER JOIN [Child] [detail] ON [lw_Parent].[ParentID] = [detail].[ParentID]

BeforeExecute
RollbackTransaction
BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	(
		SELECT
			Count(*)
		FROM
			[GrandChild] [t1]
		WHERE
			[p].[ParentID] = [t1].[ParentID]
	),
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]

