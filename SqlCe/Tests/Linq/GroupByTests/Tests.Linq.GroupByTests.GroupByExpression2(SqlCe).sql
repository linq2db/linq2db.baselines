BeforeExecute
-- SqlCe

SELECT
	[_].[ChildID] as [x],
	Avg([_].[ParentID]) as [Average]
FROM
	[Child] [_]
GROUP BY
	[_].[ChildID]

