BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

BeforeExecute
RollbackTransaction
BeforeExecute
-- Sybase.Managed Sybase

SELECT
	1
FROM
	[Parent] [p]

