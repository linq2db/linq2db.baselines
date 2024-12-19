BeforeExecute
-- SqlCe

SELECT
	[p1].[ParentID],
	[p1].[Value1],
	[p2].[ParentID] as [ParentID_1],
	[p2].[Value1] as [Value1_1]
FROM
	[Parent] [p1]
		INNER JOIN [Parent] [p2] ON [p1].[Value1] = [p2].[Value1]

