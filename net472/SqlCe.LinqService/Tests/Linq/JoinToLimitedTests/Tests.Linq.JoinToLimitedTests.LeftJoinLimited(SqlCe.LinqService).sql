BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1

SELECT 
	[o].[ParentID], 
	[o].[Value1], 
	[cg].[c_1], 
	[cg].[ChildID]
FROM
	[Parent] [o]
		LEFT JOIN ( 
			SELECT TOP (@take) 
				[t1].[ParentID] as [c_1], 
				[t1].[ChildID]
			FROM
				[Child] [t1]
		) [cg] ON [o].[ParentID] = [cg].[c_1]

