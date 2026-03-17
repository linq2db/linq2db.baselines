-- Access.Ace.OleDb AccessOleDb

SELECT
	[p_1].[ParentID],
	[t1].[ChildID]
FROM
	(
		SELECT TOP 10
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] > 0
	) [p_1],
	(
		SELECT TOP 10
			[c_1].[ChildID]
		FROM
			[Child] [c_1]
	) [t1]

