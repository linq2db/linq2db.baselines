BeforeExecute
-- SqlServer.2012

SELECT 
	[q].[ParentID], 
	[q].[Value1], 
	[a_Parent].[Value1]
FROM
	[Parent] [q]
		INNER JOIN [Child] [c_1] ON [c_1].[ParentID] = [q].[ParentID]
		LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
WHERE
	((IIF(([q].[ParentID] IS NOT NULL OR [q].[Value1] IS NOT NULL), [q].[ParentID], NULL) > 0 OR [q].[Value1] > 0) OR [a_Parent].[Value1] > 0)

