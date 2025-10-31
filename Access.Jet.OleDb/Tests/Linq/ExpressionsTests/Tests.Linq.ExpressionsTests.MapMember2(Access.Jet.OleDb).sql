BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ChildID] > 1
	)
FROM
	[Parent] [p]

