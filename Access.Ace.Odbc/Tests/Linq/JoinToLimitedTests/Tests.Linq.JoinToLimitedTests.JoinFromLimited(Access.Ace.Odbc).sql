-- Access.Ace.Odbc AccessODBC
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
	) [p_1]
		INNER JOIN [Child] [c_1] ON ([c_1].[ParentID] = [p_1].[ParentID])

