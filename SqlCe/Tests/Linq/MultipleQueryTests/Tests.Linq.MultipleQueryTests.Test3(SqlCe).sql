BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlCe

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlCe

SELECT
	1 as [c1]
FROM
	[Parent] [p]

