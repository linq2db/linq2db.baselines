-- SqlCe

SELECT
	[grandChild_1].[ParentID],
	[grandChild_1].[ChildID] as [cond],
	[grandChild_1].[GrandChildID]
FROM
	[GrandChild] [grandChild_1]
		CROSS JOIN [Child] [child_1]
WHERE
	[grandChild_1].[ChildID] IS NOT NULL

