BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [c_1]
		WHERE
			[p].[ParentID] = [c_1].[ParentID] AND [c_1].[ChildID] > 1
	)
FROM
	[Parent] [p]

