BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[ParentID],
	COUNT(*)
FROM
	[Child] [t1]
		INNER JOIN [GrandChild] [y] ON [t1].[ParentID] = [y].[ParentID] AND [t1].[ChildID] = [y].[ChildID]
GROUP BY
	[t1].[ParentID]

