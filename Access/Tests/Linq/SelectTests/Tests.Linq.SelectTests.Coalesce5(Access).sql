BeforeExecute
-- Access AccessOleDb

SELECT
	IIF((
		SELECT
			Max([a_Children].[ChildID])
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID]
	) IS NULL, [p].[Value1], (
		SELECT
			Max([a_Children].[ChildID])
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID]
	))
FROM
	[Parent] [p]

