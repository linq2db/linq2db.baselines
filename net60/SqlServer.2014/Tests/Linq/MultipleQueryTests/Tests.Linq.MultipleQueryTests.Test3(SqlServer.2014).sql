BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2014

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

BeforeExecute
RollbackTransaction
BeforeExecute
-- SqlServer.2014

SELECT
	1
FROM
	[Parent] [p]

