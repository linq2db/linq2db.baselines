BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[c_1].[ChildID],
	[c_1].[ParentID]
FROM
	[Child] [c_1]
		INNER JOIN [Parent] [p1] ON [c_1].[ParentID] = [p1].[ParentID]

