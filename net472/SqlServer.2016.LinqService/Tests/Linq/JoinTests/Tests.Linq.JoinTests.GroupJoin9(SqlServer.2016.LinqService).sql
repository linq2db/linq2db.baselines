BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT 
	[y_4].[ParentID], 
	[y_4].[Value1], 
	[y_2].[ParentID], 
	[y_2].[Value1], 
	[yid].[ParentID], 
	[yid].[Value1], 
	[y].[ParentID], 
	[y].[Value1], 
	[y_1].[ParentID], 
	[y_1].[Value1], 
	[y_3].[ParentID], 
	[y_3].[Value1]
FROM
	[Parent] [y_4]
		LEFT JOIN [Parent] [yid] ON [y_4].[ParentID] = [yid].[ParentID]
		LEFT JOIN [Parent] [y] ON [y_4].[ParentID] = [y].[ParentID]
		LEFT JOIN [Parent] [y_1] ON [y_4].[ParentID] = [y_1].[ParentID]
		LEFT JOIN [Parent] [y_2] ON [y_4].[ParentID] = IIF([y_2].[Value1] IS NULL, 1, [y_2].[Value1])
		LEFT JOIN [Parent] [y_3] ON [y_4].[ParentID] = [y_3].[ParentID]

