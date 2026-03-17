-- Access.Ace.Odbc AccessODBC

SELECT
	[cross_1].[ParentID_1],
	[cross_1].[ChildID]
FROM
	(
		SELECT
			[c_1].[ParentID],
			[p].[ParentID] as [ParentID_1],
			[c_1].[ChildID],
			[p].[Value1]
		FROM
			[Parent] [p],
			[Child] [c_1]
	) [cross_1]
		INNER JOIN [Parent] [a_Parent] ON ([cross_1].[ParentID] = [a_Parent].[ParentID])
WHERE
	[a_Parent].[ParentID] = [cross_1].[ParentID_1] AND
	([a_Parent].[Value1] = [cross_1].[Value1] OR [a_Parent].[Value1] IS NULL AND [cross_1].[Value1] IS NULL)
ORDER BY
	[cross_1].[ParentID_1],
	[cross_1].[ChildID]

