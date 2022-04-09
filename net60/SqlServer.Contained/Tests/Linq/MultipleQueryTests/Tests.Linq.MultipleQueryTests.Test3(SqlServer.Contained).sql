BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

BeforeExecute
RollbackTransaction
BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	1
FROM
	[Parent] [p]

