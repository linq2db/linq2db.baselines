BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[o].[ParentID],
	[o].[Value1],
	[c_2].[ParentID],
	[c_2].[ChildID]
FROM
	[Parent] [o]
		LEFT JOIN (
			SELECT TOP (1)
				[c_1].[ParentID],
				[c_1].[ChildID]
			FROM
				[Child] [c_1]
		) [c_2] ON [o].[ParentID] = [c_2].[ParentID]
ORDER BY
	[c_2].[ChildID] DESC

