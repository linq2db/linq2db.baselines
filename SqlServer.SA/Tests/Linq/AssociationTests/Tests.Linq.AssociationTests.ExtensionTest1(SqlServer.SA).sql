-- SqlServer.SA SqlServer.2019

SELECT
	[a_Children].[ParentID],
	[a_Children].[ChildID]
FROM
	[Parent] [t1]
		INNER JOIN [Child] [a_Children] ON [t1].[ParentID] = [a_Children].[ParentID]

