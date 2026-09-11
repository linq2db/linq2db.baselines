-- Access.Jet.Odbc AccessODBC
SELECT
	[p_1].[ParentID],
	[c_1].[ChildID]
FROM
	(
		SELECT TOP 1
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] = 2
	) [p_1],
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = 2

