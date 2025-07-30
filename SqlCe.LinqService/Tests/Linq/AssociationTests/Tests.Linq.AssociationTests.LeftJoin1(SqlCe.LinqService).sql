BeforeExecute
-- SqlCe

SELECT
	[p].[ParentID],
	[p].[Value1],
	[c_1].[ParentID] as [ParentID_1],
	[c_1].[ChildID]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
WHERE
	[p].[ParentID] >= 4

