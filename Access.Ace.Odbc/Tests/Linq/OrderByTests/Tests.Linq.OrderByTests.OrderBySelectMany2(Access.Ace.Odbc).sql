-- Access.Ace.Odbc AccessODBC

SELECT
	[cross_1].[ParentID_1],
	[cross_1].[ChildID]
FROM
	(
		SELECT
			[c_1].[ParentID],
			[p].[ParentID] as [ParentID_1],
			[c_1].[ChildID]
		FROM
			[Parent] [p],
			[Child] [c_1]
	) [cross_1]
		INNER JOIN [Parent] [a_Parent1] ON ([cross_1].[ParentID] = [a_Parent1].[ParentID])
WHERE
	[cross_1].[ParentID_1] = [a_Parent1].[ParentID]
ORDER BY
	[cross_1].[ParentID_1],
	[cross_1].[ChildID]

