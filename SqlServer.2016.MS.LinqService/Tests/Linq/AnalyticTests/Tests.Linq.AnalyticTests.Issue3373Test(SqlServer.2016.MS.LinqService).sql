BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

SELECT
	SUM(IIF([t].[ParentID] IN (3), [t].[ChildID], 0)) OVER(PARTITION BY [a_Parent].[Value1] ORDER BY [t].[ParentID])
FROM
	[Child] [t]
		LEFT JOIN [Parent] [a_Parent] ON [t].[ParentID] = [a_Parent].[ParentID]

