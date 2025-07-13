BeforeExecute
-- SqlCe

SELECT
	[a_2].[ParentID],
	[a_2].[Value1],
	[z_1].[ParentID] as [ParentID_1],
	[z_1].[Value1] as [Value1_1],
	[y].[ParentID] as [ParentID_2],
	[y].[Value1] as [Value1_2],
	[a].[ParentID] as [ParentID_3],
	[a].[Value1] as [Value1_3],
	[z].[ParentID] as [ParentID_4],
	[z].[Value1] as [Value1_4],
	[a_1].[ParentID] as [ParentID_5],
	[a_1].[Value1] as [Value1_5]
FROM
	[Parent] [a_2]
		LEFT JOIN [Parent] [y] ON [a_2].[ParentID] = [y].[ParentID]
		LEFT JOIN [Parent] [a] ON [a_2].[ParentID] = [a].[ParentID]
		LEFT JOIN [Parent] [z] ON [a_2].[ParentID] = [z].[ParentID]
		LEFT JOIN [Parent] [z_1] ON [a_2].[ParentID] = Coalesce([z_1].[Value1], 1)
		LEFT JOIN [Parent] [a_1] ON [a_2].[ParentID] = [a_1].[ParentID]

BeforeExecute
-- SqlCe

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

