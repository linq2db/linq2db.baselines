BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	IIF((
		SELECT
			MAX([a_Children].[ChildID])
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID]
	) IS NULL, [p].[Value1], (
		SELECT
			MAX([a_Children].[ChildID])
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID]
	))
FROM
	[Parent] [p]

