BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[a_GrandChildren].[ParentID],
	[a_GrandChildren].[ChildID],
	[a_GrandChildren].[GrandChildID]
FROM
	[Child] [t]
		LEFT JOIN [Parent] [a_Parent] ON [t].[ParentID] = [a_Parent].[ParentID]
		INNER JOIN [GrandChild] [a_GrandChildren] ON [a_Parent].[ParentID] = [a_GrandChildren].[ParentID] AND [a_GrandChildren].[ParentID] IS NOT NULL
WHERE
	[a_GrandChildren].[ParentID] = 1 AND [a_GrandChildren].[ParentID] IS NOT NULL

