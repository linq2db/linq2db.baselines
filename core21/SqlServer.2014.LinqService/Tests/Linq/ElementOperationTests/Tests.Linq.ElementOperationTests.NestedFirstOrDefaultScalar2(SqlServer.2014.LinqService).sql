BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT 
	[p].[ParentID], 
	[t1].[MaxChild]
FROM
	[Parent] [p]
		OUTER APPLY ( 
			SELECT TOP (@take) 
				[c_1].[ChildID] as [MaxChild]
			FROM
				[Child] [c_1]
					LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
			WHERE
				([a_Parent].[ParentID] = [p].[ParentID] AND ([a_Parent].[Value1] IS NULL AND [p].[Value1] IS NULL OR [a_Parent].[Value1] = [p].[Value1]))
			ORDER BY
				[c_1].[ChildID] * [c_1].[ParentID] DESC
		) [t1]

