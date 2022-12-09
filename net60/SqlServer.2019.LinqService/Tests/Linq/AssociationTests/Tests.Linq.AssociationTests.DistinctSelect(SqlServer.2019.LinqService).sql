BeforeExecute
-- SqlServer.2019

SELECT
	[t1].[c2]
FROM
	(
		SELECT DISTINCT
			[a_Child].[ParentID] as [c1],
			[a_Child].[ChildID] as [c2]
		FROM
			[GrandChild] [c_1]
				LEFT JOIN [Child] [a_Child] ON [c_1].[ParentID] = [a_Child].[ParentID] AND [c_1].[ChildID] = [a_Child].[ChildID]
				LEFT JOIN [Parent] [a_Parent] ON [a_Child].[ParentID] = [a_Parent].[ParentID]
		WHERE
			[a_Parent].[ParentID] > 0
	) [t1]

