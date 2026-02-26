-- Access.Jet.OleDb AccessOleDb

SELECT
	IIF([t1].[ParentID] IS NOT NULL, [t1].[ChildID], 0)
FROM
	(
		SELECT
			(
				SELECT TOP 1
					[a_Children].[ParentID]
				FROM
					[Child] [a_Children]
				WHERE
					[employee].[ParentID] = [a_Children].[ParentID]
			) as [ParentID],
			(
				SELECT TOP 1
					[a_Children_1].[ChildID]
				FROM
					[Child] [a_Children_1]
				WHERE
					[employee].[ParentID] = [a_Children_1].[ParentID]
			) as [ChildID]
		FROM
			[Parent] [employee]
				LEFT JOIN [GrandChild] [names_1] ON ([employee].[ParentID] = [names_1].[ParentID])
	) [t1]

