BeforeExecute
-- SqlCe

SELECT
	[p].[ParentID],
	[p].[Value1],
	[a_Parent].[ParentID] as [ParentID_1],
	[a_Parent].[Value1] as [Value2]
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [c_1].[ParentID] = [p].[ParentID]
		LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
WHERE
	([p].[ParentID] > 0 OR [p].[Value1] > 0 OR [a_Parent].[Value1] > 0)

