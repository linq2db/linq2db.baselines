BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > -100
ORDER BY
	[c_1].[ParentID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT TOP (@take)
				[c_1].[ParentID],
				[c_1].[ChildID]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] > 0
			ORDER BY
				[c_1].[ParentID]
		) [t1]
ORDER BY
	[p].[ParentID]

