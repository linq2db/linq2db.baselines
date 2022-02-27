BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[o].[ParentID],
	[o].[Value1],
	[t1].[c_1],
	[t1].[ChildID]
FROM
	[Parent] [o]
		OUTER APPLY (
			SELECT TOP (@take)
				[cg].[ParentID] as [c_1],
				[cg].[ChildID]
			FROM
				[Child] [cg]
			WHERE
				[o].[ParentID] = [cg].[ParentID]
		) [t1]

