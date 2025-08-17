BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[o].[ParentID],
	[o].[Value1],
	[o].[ParentID] as [ParentID_1],
	[o].[Value1] as [Value1_1],
	[pet].[ParentID] as [ParentID_2],
	[pet].[Value1] as [Value1_2]
FROM
	[Parent] [o]
		LEFT JOIN [Parent] [pet] ON [o].[ParentID] = [pet].[ParentID]

