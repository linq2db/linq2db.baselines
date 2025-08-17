BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t].[ParentID],
	[t].[ChildID],
	[i].[ParentID] as [ParentID_1],
	[i].[Value1]
FROM
	[Child] [t]
		LEFT JOIN [Parent] [i] ON [t].[ParentID] = [i].[ParentID]

