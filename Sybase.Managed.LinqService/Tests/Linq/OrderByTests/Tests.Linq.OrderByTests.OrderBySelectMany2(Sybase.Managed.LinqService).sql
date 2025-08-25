BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[sub].[ParentID_1],
	[sub].[ChildID]
FROM
	(
		SELECT
			[c_1].[ParentID],
			[p].[ParentID] as [ParentID_1],
			[c_1].[ChildID]
		FROM
			[Parent] [p],
			[Child] [c_1]
	) [sub]
		INNER JOIN [Parent] [a_Parent1] ON [sub].[ParentID] = [a_Parent1].[ParentID]
WHERE
	[sub].[ParentID_1] = [a_Parent1].[ParentID]
ORDER BY
	[sub].[ParentID_1],
	[sub].[ChildID]

