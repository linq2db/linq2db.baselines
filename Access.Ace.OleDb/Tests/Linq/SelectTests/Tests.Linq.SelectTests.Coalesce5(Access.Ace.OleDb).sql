-- Access.Ace.OleDb AccessOleDb

SELECT
	IIF([t1].[Max_1] IS NULL, [t1].[Value1], [t1].[Max_1])
FROM
	(
		SELECT
			(
				SELECT
					MAX([a_Children].[ChildID])
				FROM
					[Child] [a_Children]
				WHERE
					[p].[ParentID] = [a_Children].[ParentID]
			) as [Max_1],
			[p].[Value1]
		FROM
			[Parent] [p]
	) [t1]

