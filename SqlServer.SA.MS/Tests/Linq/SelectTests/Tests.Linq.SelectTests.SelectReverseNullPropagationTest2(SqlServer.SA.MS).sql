BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[c_1].[ParentID],
	IIF([c_1].[ParentID] IS NOT NULL AND [a_Parent].[ParentID] IS NOT NULL, 1, 0),
	[a_Parent].[Value1]
FROM
	[Parent] [t1]
		LEFT JOIN [Child] [c_1] ON [t1].[Value1] = [c_1].[ParentID] AND [t1].[Value1] IS NOT NULL
		LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]

