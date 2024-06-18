BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[p].[ParentID],
	IIF([p].[ParentID] IS NOT NULL, [p].[Value1], NULL),
	IIF([c_1].[ParentID] IS NOT NULL, IIF([a_Parent].[ParentID] IS NOT NULL, [a_Parent].[Value1], NULL), NULL)
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [c_1].[ParentID] = [p].[ParentID]
		LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
WHERE
	([p].[ParentID] > 0 OR [p].[Value1] > 0 OR [a_Parent].[Value1] > 0)

