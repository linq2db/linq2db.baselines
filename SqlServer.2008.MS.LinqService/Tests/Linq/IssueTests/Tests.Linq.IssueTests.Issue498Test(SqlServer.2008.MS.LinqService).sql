BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[ParentID],
	COUNT(*)
FROM
	[Child] [t1]
		INNER JOIN [GrandChild] [y] ON [t1].[ParentID] = [y].[ParentID] AND [t1].[ChildID] = [y].[ChildID]
GROUP BY
	[t1].[ParentID]

