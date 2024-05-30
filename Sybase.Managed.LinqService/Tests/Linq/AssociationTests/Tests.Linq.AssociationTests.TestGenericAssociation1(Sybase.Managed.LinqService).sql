BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[a_MiddleGeneric].[ParentID],
	[a_Bottom].[ParentID],
	[a_Bottom].[ChildID],
	[a_Bottom].[GrandChildID]
FROM
	[Parent] [t]
		LEFT JOIN [Child] [a_MiddleGeneric] ON [t].[ParentID] = [a_MiddleGeneric].[ParentID] AND [a_MiddleGeneric].[ChildID] > 1
		LEFT JOIN [GrandChild] [a_Bottom] ON [a_MiddleGeneric].[ChildID] = [a_Bottom].[ChildID]
WHERE
	[t].[ParentID] IN (1, 5)
ORDER BY
	[t].[ParentID]

